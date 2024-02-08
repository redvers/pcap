use "pcap"
use "files"

use @printf[I32](fmt: Pointer[U8] tag, ...)

actor Main is PcapReceiver
  let max_err_length: USize = 256
  let max_network_devices: USize = 64
  var thistag: Main tag = recover tag this end
  let pcap: PonyPcap
  let env: Env

  new create(env': Env) =>
    env = env'
    env.out.print("Hello")

/*
    pcap =
      PonyPcap(where device = "ens33",
                     failcb = thistag~failure(),
                  successcb = thistag~success(),
                     filter = "")
*/

    pcap =
      PonyPcap.create_from_file(where fileauth = FileAuth(env.root),
                                                filename = "sample-pcaps/SkypeIRC.cap",
//                                                filename = "sample-pcaps/http.cap",
//                                                filename = "sample-pcaps/tftp_rrq.pcap",
//                                                filename = "sample-pcaps/archive.wrccdc.org/wrccdc-mss-msctrl-cap.pcap1000",
                                                  failcb = thistag~failure(),
                                               successcb = thistag~success(),
                                                  filter = "")


//    pcap.register_ipv4_icmp(

  be success() => None
//    pcap.register_ipv4_icmp(cb)
    pcap.start_capture_x(thistag)

  be failure(errbuf: String val) => None
    @printf("failure: %s\n".cstring(), errbuf.cstring())

  be test() => None
    @printf("TEST\n".cstring())




  be ipv4_icmp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, icmphdr: IcmpHeader val, payload: Array[U8] val) =>
    env.out.print("[IPv4:ICMP]: [" +
                   ehdr.ether_shost.string() + "] " +
                   ipv4hdr.ip_src.string() + " -> [" +
                   ehdr.ether_dhost.string() + "] " +
                   ipv4hdr.ip_dst.string() + ", Payload Size: " +
                   payload.size().string())

  be ipv4_tcp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, tcphdr: TCPHeader val, payload: Array[U8] val) =>
    env.out.print("[IPv4:TCP]: [" +
                   ehdr.ether_shost.string() + "] " +
                   ipv4hdr.ip_src.string() + ":" +
                   tcphdr.tcp_sport().string() + " -> [" +
                   ehdr.ether_dhost.string() + "] " +
                   ipv4hdr.ip_dst.string() + ":" +
                   tcphdr.tcp_dport().string() + ", Payload Size: " +
                   payload.size().string())

  be ipv4_udp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, udphdr: UDPHeader val, payload: Array[U8] val) =>
    env.out.print("[IPv4:UDP]: [" +
                   ehdr.ether_shost.string() + "] " +
                   ipv4hdr.ip_src.string() + ":" +
                   udphdr.udp_sport().string() + " -> [" +
                   ehdr.ether_dhost.string() + "] " +
                   ipv4hdr.ip_dst.string() + ":" +
                   udphdr.udp_dport().string() + ", Payload Size: " +
                   payload.size().string())


