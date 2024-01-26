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


    pcap =
      PonyPcap(where device = "ens33",
                     failcb = thistag~failure(),
                  successcb = thistag~success(),
                     filter = "")

/*
    pcap =
      PonyPcap.create_from_file(where fileauth = FileAuth(env.root),
                                                filename = "sample-pcaps/SkypeIRC.cap",
                                                  failcb = thistag~failure(),
                                               successcb = thistag~success(),
                                                  filter = "udp")
                                                  */

//    pcap.register_ipv4_icmp(

  be success() => None
//    pcap.register_ipv4_icmp(cb)
    pcap.start_capture_x(thistag)

  be failure(errbuf: String val) => None
    @printf("failure: %s\n".cstring(), errbuf.cstring())

  be test() => None
    @printf("TEST\n".cstring())




  be ipv4_icmp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, icmphdr: IcmpHeader val, payload: Array[U8] val) =>
    @printf("[IPv4:ICMP]: [%s] %s -> [%s] %s - size: %d\n".cstring(),
            ehdr.ether_shost.string().cstring(), ipv4hdr.ip_src.string().cstring(),
            ehdr.ether_dhost.string().cstring(), ipv4hdr.ip_dst.string().cstring(),
            payload.size())

  be ipv4_tcp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, tcphdr: TCPHeader val, payload: Array[U8] val) =>
    @printf("[IPv4:TCP]: [%s]:%s:%s -> [%s] %s:%s caplen: %d, plen: %d, PayloadSize: %d\n".cstring(),
            ehdr.ether_shost.string().cstring(), ipv4hdr.ip_src.string().cstring(), tcphdr.tcp_sport().string().cstring(),
            ehdr.ether_dhost.string().cstring(), ipv4hdr.ip_dst.string().cstring(), tcphdr.tcp_dport().string().cstring(),
            pkt.caplen, pkt.len,
            payload.size())

  be ipv4_udp(pkt: Pcappkthdr val, ehdr: EtherHeader val, ipv4hdr: IPv4Header val, udphdr: UDPHeader val, payload: Array[U8] val) =>
    @printf("[IPv4:UDP]: [%s]:%s:%s -> [%s] %s:%s caplen: %d, plen: %d, PayloadSize: %d \n".cstring(),
            ehdr.ether_shost.string().cstring(), ipv4hdr.ip_src.string().cstring(), udphdr.udp_sport().string().cstring(),
            ehdr.ether_dhost.string().cstring(), ipv4hdr.ip_dst.string().cstring(), udphdr.udp_dport().string().cstring(),
            pkt.caplen, pkt.len,
            payload.size())


