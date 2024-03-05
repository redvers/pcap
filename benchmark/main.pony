use "../pcap"
use "files"
use "collections"
use "time"
use "pony_bench"

use @pcap_inject[I32](parg0: NullablePointer[PcapS] tag, parg1: Pointer[None] tag, parg2: U64)
use @printf[I32](fmt: Pointer[U8] tag, ...)

actor Main is PcapReceiver
  let max_err_length: USize = 256
  let max_network_devices: USize = 64
  var thistag: Main tag = recover tag this end
  var pcap: PonyPcap
  let env: Env
  var initcnt: U64 = 60
  var cnt: U64 = 1
  var nanos: U64 = Time.nanos()

  new create(env': Env) =>
    env = env'
    cnt = initcnt

    pcap =
      PonyPcap.create_from_file(where fileauth = FileAuth(env.root),
                                                filename = "../sample-pcaps/wrccdc-mss-msctrl-cap.pcap1000",
                                                  failcb = thistag~failure(),
                                               successcb = thistag~success(),
                                                  filter = "")


  be success() => None
    pcap.start_capture_x(thistag)

  be failure(errbuf: String val) => None
    @printf("failure: %s\n".cstring(), errbuf.cstring())

  be completed() => None
    if (cnt == 0) then
      return_bench()
      return
    end
    cnt = cnt - 1
    pcap =
      PonyPcap.create_from_file(where fileauth = FileAuth(env.root),
                                                filename = "../sample-pcaps/wrccdc-mss-msctrl-cap.pcap1000",
                                                  failcb = thistag~failure(),
                                               successcb = thistag~success(),
                                                  filter = "")

  be return_bench() =>
    let endtime: U64 = Time.nanos()
    env.out.print("Start time: " + nanos.string())
    env.out.print("End time: " + endtime.string())
    let tt: F64 = ((endtime.f64() - nanos.f64()) / F64(1000000000))
    env.out.print("Time taken: " + tt.string())
    let nanos_per_cycle: U64 = ((endtime - nanos) / initcnt)
    env.out.print("Per cycle: " + nanos_per_cycle.string())



  be ipv4_icmp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, icmphdr: IcmpHeader val, payload: Array[U8] val) => None
  be ipv4_tcp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, tcphdr: TCPHeader val, payload: Array[U8] val) => None
  be ipv4_udp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, udphdr: UDPHeader val, payload: Array[U8] val) => None


