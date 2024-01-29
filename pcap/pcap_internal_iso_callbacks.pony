primitive PcapInternalISOCallbacks
  fun @internal_callback(obj: PcapReceiver tag, hdr': Pcappkthdr iso, data: Pointer[U8] ref) => None
    var hdr: Pcappkthdr iso = hdr'.clone()
    let caplen: USize = hdr.caplen.usize()

    let packet: Array[U8] iso = recover Array[U8].init(0, caplen) end
    @memcpy(packet.cpointer(), data, caplen.u64())
    (let etherhdr: Array[U8] iso, let subether: Array[U8] iso) = (consume packet).chop(14)

    try
      if (etherhdr.read_u16(12)?.bswap() == 0x0800) then
        PcapInternalISOCallbacks.ipv4(obj, consume hdr, consume etherhdr, consume subether)?
      else
        @printf("Unknown packet type\n".cstring())
      end
    end

  fun ipv4(obj: PcapReceiver tag, hdr: Pcappkthdr iso, etherhdr: Array[U8] iso, subether: Array[U8] iso) ? =>
    let sizeof: USize = (((subether(0)? and 0x0f).i32()) * 4).usize()
    (let ipv4hdr: Array[U8] iso, let subipv4: Array[U8] iso) = (consume subether).chop(sizeof)

    match ipv4hdr(9)?
    | 1 => @printf("icmp\n".cstring())
    | 6 => @printf("tcp\n".cstring())
    | 17 => @printf("udp\n".cstring())
    else
      @printf("unknown\n".cstring())
    end

  fun icmp(obj: PcapReceiver tag, hdr: Pcappkthdr iso, etherhdr: Array[U8] iso, ipv4hdr: Array[U8] iso, subipv4: Array[U8] iso) =>
    (let icmp: Array[U8] iso, payload: Array[U8] iso) = subipv4.chop(8)


/*
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
*/
