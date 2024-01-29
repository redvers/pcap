primitive PcapInternalCallbacks
  fun @internal_callback(obj: PcapReceiver tag, hdr': Pcappkthdr iso, data: Pointer[U8] ref) =>
    var hdr: Pcappkthdr iso = hdr'.clone()
    let caplen: USize = hdr.caplen.usize()
    var etherHeader: EtherHeader iso =
    @memcpy[EtherHeader iso^](NullablePointer[EtherHeader](EtherHeader), data, EtherHeader.sizeof())


    let t: U16 = etherHeader.ether_type.bswap() // FIXME for endianness
    if     (t == 0x0800) then
      PcapInternalCallbacks.ipv4(obj, consume hdr, data, consume etherHeader)
    elseif (t == 0x0806) then None
//      @printf("[ARP]: %s -> %s\n".cstring(), etherHeader.ether_shost.string().cstring(),
//                                      etherHeader.ether_dhost.string().cstring())
    elseif (t == 0x8100) then None
//      @printf("[VLAN]: %s -> %s\n".cstring(), etherHeader.ether_shost.string().cstring(),
//                                      etherHeader.ether_dhost.string().cstring())
    elseif (t == 0x81DD) then None
//      @printf("[IPv6]: %s -> %s\n".cstring(), etherHeader.ether_shost.string().cstring(),
//                                      etherHeader.ether_dhost.string().cstring())
    else None
//      @printf("[%d]: %s -> %s\n".cstring(), t, etherHeader.ether_shost.string().cstring(),
//                                      etherHeader.ether_dhost.string().cstring())
    end


  fun ipv4(obj: PcapReceiver tag, hdr: Pcappkthdr iso, data: Pointer[U8] ref, etherHeader: EtherHeader iso) => None
    var ipv4Header: IPv4Header iso =
    @memcpy[IPv4Header iso^](NullablePointer[IPv4Header](IPv4Header), data.offset(etherHeader.sizeof().usize()), 20)

    if (ipv4Header.ip_p == 1) then
      PcapInternalCallbacks.icmp(obj, consume hdr, data, consume etherHeader, consume ipv4Header)
    elseif (ipv4Header.ip_p == 6) then
      PcapInternalCallbacks.tcp(obj, consume hdr, data, consume etherHeader, consume ipv4Header)
    elseif (ipv4Header.ip_p == 17) then
      PcapInternalCallbacks.udp(obj, consume hdr, data, consume etherHeader, consume ipv4Header)
    else
      @printf("Unknown protocol: %d\n".cstring(), ipv4Header.ip_p)
    end

  fun icmp(obj: PcapReceiver tag, hdr: Pcappkthdr iso, data: Pointer[U8] ref, etherHeader: EtherHeader iso, ipv4Header: IPv4Header iso) => None
    var icmpHeader: IcmpHeader iso =
    @memcpy[IcmpHeader iso^](NullablePointer[IcmpHeader](IcmpHeader),
            data.offset(etherHeader.sizeof().usize() + ipv4Header.sizeof().usize()),
            IcmpHeader.sizeof())

    obj.ipv4_icmp(consume hdr, consume etherHeader, consume ipv4Header, consume icmpHeader, recover iso Array[U8](0) end)

  fun tcp(obj: PcapReceiver tag, hdr: Pcappkthdr iso, data: Pointer[U8] ref, etherHeader: EtherHeader iso, ipv4Header: IPv4Header iso) => None
    var tcpheader: TCPHeader iso =
    @memcpy[TCPHeader iso^](NullablePointer[TCPHeader](TCPHeader), data.offset(etherHeader.sizeof().usize() + ipv4Header.sizeof().usize()), 60)

    let dptr: U64 = etherHeader.sizeof() + ipv4Header.sizeof() + tcpheader.sizeof()
    let length: U64 = hdr.caplen.u64() - dptr

    var payload: Array[U8] iso = recover iso Array[U8].init(0, length.usize()) end
    @memcpy(payload.cpointer(), data.offset(dptr.usize()), length)

    obj.ipv4_tcp(consume hdr, consume etherHeader, consume ipv4Header, consume tcpheader, consume payload)

  fun udp(obj: PcapReceiver tag, hdr: Pcappkthdr iso, data: Pointer[U8] ref, etherHeader: EtherHeader iso, ipv4Header: IPv4Header iso) => None
    var udpHeader: UDPHeader iso =
    @memcpy[UDPHeader iso^](NullablePointer[UDPHeader](UDPHeader), data.offset(etherHeader.sizeof().usize() + ipv4Header.sizeof().usize()), 8)

    let dptr: U64 = (etherHeader.sizeof() + ipv4Header.sizeof() + udpHeader.sizeof())
    let length: U64 = (hdr.caplen.u64() - dptr) // FIXME -=- Understand what the deal with the sizes is...

    var payload: Array[U8] iso = recover iso Array[U8].init(0, length.usize()) end
    @memcpy(payload.cpointer(), data.offset(dptr.usize()), length)

    obj.ipv4_udp(consume hdr, consume etherHeader, consume ipv4Header, consume udpHeader, consume payload)

