use "collections"

class TCPAssemble
  let ether: EtherHeader = EtherHeader
  let ipv4: IPv4Header = IPv4Header
  let tcp: TCPHeader = TCPHeader

  fun ref set_shost(a: String val) ? => ether.set_shost(a)?
  fun ref set_dhost(a: String val) ? => ether.set_dhost(a)?
  fun ref set_saddr(a: String val) ? => ipv4.set_saddr(a)?
  fun ref set_daddr(a: String val) ? => ipv4.set_daddr(a)?
  fun ref set_sport(n: U16 val) => tcp.set_sport(n)
  fun ref set_dport(n: U16 val) => tcp.set_dport(n)

  fun ref serialize(): Array[U8] val =>
    ipv4.ip_sum = 0
    tcp.th_sum = 0
    let rv: Array[U8] trn = recover trn Array[U8] end
    let ets: Array[U8] val = ether.serialize()
    let ips: Array[U8] val = ipv4.serialize()
    let tcs: Array[U8] val = tcp.serialize()

    let pseudo: Array[U8] trn = recover trn Array[U8] end

    pseudo.push_u8(ipv4.ip_src.a)
    pseudo.push_u8(ipv4.ip_src.b)
    pseudo.push_u8(ipv4.ip_src.c)
    pseudo.push_u8(ipv4.ip_src.d)

    pseudo.push_u8(ipv4.ip_dst.a)
    pseudo.push_u8(ipv4.ip_dst.b)
    pseudo.push_u8(ipv4.ip_dst.c)
    pseudo.push_u8(ipv4.ip_dst.d)
    pseudo.push_u8(0)
    pseudo.push_u8(6)
    pseudo.push_u16(tcs.size().u16().bswap())

    pseudo.append(tcs)

    var sum: U32 = 0
    try
      for f in Range[USize](0, pseudo.size().usize(), 2) do
        sum = sum + pseudo.read_u16(f)?.bswap().u32()
      end
    else
      @printf("oof\n".cstring())
    end

    var lowersum: U16 = (sum and 0x0000ffff).u16()
    var uppersum: U16 = (sum and 0xffff0000).shr(16).u16()

    var sum16: U16 = lowersum + uppersum
    sum16 = sum16.op_not()

    tcp.th_sum = sum16

    try
      sum = 0
      for f in Range[USize](0, ips.size().usize(), 2) do
        sum = sum + ips.read_u16(f)?.bswap().u32()
      end
    else
      @printf("oof\n".cstring())
    end

    lowersum = (sum and 0x0000ffff).u16()
    uppersum = (sum and 0xffff0000).shr(16).u16()

    sum16 = lowersum + uppersum
    sum16 = sum16.op_not()
    ipv4.ip_sum = sum16

    rv.append(ets)
    rv.append(ipv4.serialize())
    rv.append(tcp.serialize())

    consume rv

