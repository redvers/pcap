interface PcapReceiver
//  be ipv4_icmp(hdr: Pcappkthdr iso, ehdr: EtherHeader iso, ipv4hdr: IPv4Header iso, icmphdr: IcmpHeader iso, payload: Array[U8] iso) => None
  be ipv4_icmp(hdr: Pcappkthdr iso, ehdr: EtherHeader iso, ipv4hdr: IPv4Header iso, icmphdr: IcmpHeader iso, payload: Array[U8] iso) => None
  be ipv4_tcp(hdr: Pcappkthdr iso, ehdr: EtherHeader iso, ipv4hdr: IPv4Header iso, tcphdr: TCPHeader iso, payload: Array[U8] iso) => None
  be ipv4_udp(hdr: Pcappkthdr iso, ehdr: EtherHeader iso, ipv4hdr: IPv4Header iso, udphdr: UDPHeader iso, payload: Array[U8] iso) => None
