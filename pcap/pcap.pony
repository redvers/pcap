
use "lib:pcap"
use @printf[I32](fmt: Pointer[U8] tag, ...)
use @pcap_open_live[NullablePointer[PcapS]](device: Pointer[U8] tag, snaplen: I32, promisc: I32, to_ms: I32, errbuf: Pointer[U8] tag)
use @pcap_open_dead[NullablePointer[PcapS]](linktype: I32, snaplen: I32)
use @pcap_compile[I32](pcaps: NullablePointer[PcapS] tag, bpfprogram: NullablePointer[Bpfprogram] tag, string: Pointer[U8] tag, optimize: I32, netmask: IPv4)
use @pcap_setfilter[I32](pcaps: NullablePointer[PcapS] tag, bpfprogram: NullablePointer[Bpfprogram] tag)
use @pcap_loop[I32](pcaps: NullablePointer[PcapS] tag, cnt: I32, cb: Pointer[None], userarg: Any tag)
use @pcap_geterr[Pointer[U8]](pcaps: NullablePointer[PcapS] tag)
use @memcpy[Pointer[U8] iso](dst: Pointer[None], src: Pointer[U8] tag, size: U64)


type PcapSuccess is {(): None} val
type PcapFailure is {(String val): None} val
type PcapGotPacket[A: Any tag] is @{(A tag, Pcappkthdr iso, Pointer[U8] ref): None}

actor PonyPcap[A: Any tag]
  let errbuf: String ref = String(256)
  var pcaps:  NullablePointer[PcapS]
  var bpfprogram: NullablePointer[Bpfprogram] = NullablePointer[Bpfprogram](Bpfprogram)
  var hasfilter: Bool = false
  var cb: PcapGotPacket[A] = @{(obj: A, hdr: Pcappkthdr iso, data: Pointer[U8] ref) => None}

  new create(device: String = "ens33",
            snaplen: ISize  = 8192,
             promis: Bool   = false,
              to_ms: USize  = 100,
          successcb: PcapSuccess,
             failcb: PcapFailure,
             filter: String val = "") =>

		pcaps = @pcap_open_live(device.cstring(), snaplen.i32(), 0, to_ms.i32(), errbuf.cstring())

		if (pcaps.is_none()) then
      errbuf.recalc()
			failcb(errbuf.clone())
		else
      var netmask: IPv4 = IPv4
      var r: I32 = @pcap_compile(pcaps, bpfprogram, filter.cstring(), 0, netmask)
      if (r != 0) then
        failcb(String.from_cstring(@pcap_geterr(pcaps)).clone())
        return
      end

      r = @pcap_setfilter(pcaps, bpfprogram)
      if (r != 0) then
        failcb(String.from_cstring(@pcap_geterr(pcaps)).clone())
        return
      end

      hasfilter = true

			successcb()
		end
    None

  be register_callback(cb': PcapGotPacket[A]) =>
    cb = cb'

  be start_capture_x(x: A) =>
    @printf("Starting Capture\n".cstring())
    @pcap_loop[I32](pcaps, 20, addressof PcapInternalCallbacks[A].internal_callback, x)
    @printf("20 cnt\n".cstring())
    start_capture_x(x)

primitive PcapInternalCallbacks[A: Any tag]
  fun @internal_callback(obj: A, hdr: Pcappkthdr iso, data: Pointer[U8] ref) =>
    let caplen: USize = hdr.caplen.usize()
    var etherHeader: EtherHeader = EtherHeader
    @memcpy(NullablePointer[EtherHeader](etherHeader), data, etherHeader.sizeof())


    let t: U16 = etherHeader.ether_type.bswap() // FIXME for endianness

    if     (t == 0x0800) then
      PcapInternalCallbacks[A].ipv4(obj, consume hdr, data, etherHeader)
    elseif (t == 0x0806) then
      @printf("[ARP]: %s -> %s\n".cstring(), etherHeader.ether_shost.string().cstring(),
                                      etherHeader.ether_dhost.string().cstring())
    elseif (t == 0x8100) then
      @printf("[VLAN]: %s -> %s\n".cstring(), etherHeader.ether_shost.string().cstring(),
                                      etherHeader.ether_dhost.string().cstring())
    elseif (t == 0x81DD) then
      @printf("[IPv6]: %s -> %s\n".cstring(), etherHeader.ether_shost.string().cstring(),
                                      etherHeader.ether_dhost.string().cstring())
    else
      @printf("[%d]: %s -> %s\n".cstring(), t, etherHeader.ether_shost.string().cstring(),
                                      etherHeader.ether_dhost.string().cstring())
    end


  fun ipv4(obj: A, hdr: Pcappkthdr iso, data: Pointer[U8] ref, etherHeader: EtherHeader) =>
    var ipv4Header: IPv4Header = IPv4Header
    @memcpy(NullablePointer[IPv4Header](ipv4Header), data.offset(etherHeader.sizeof().usize()),
            20)

    if (ipv4Header.ip_p == 1) then
      PcapInternalCallbacks[A].icmp(obj, consume hdr, data, etherHeader, ipv4Header)
    elseif (ipv4Header.ip_p == 6) then
      @printf("tcp\n".cstring())
    elseif (ipv4Header.ip_p == 17) then
      @printf("udp\n".cstring())
    else
      @printf("Unknown protocol: %d\n".cstring(), ipv4Header.ip_p)
    end

  fun icmp(obj: A, hdr: Pcappkthdr iso, data: Pointer[U8] ref, etherHeader: EtherHeader, ipv4Header: IPv4Header) =>
    @printf("[IPv4:ICMP]: [%s]:%s -> [%s]:%s\n".cstring(),
            etherHeader.ether_shost.string().cstring(), ipv4Header.ip_src.string().cstring(),
            etherHeader.ether_dhost.string().cstring(), ipv4Header.ip_dst.string().cstring())

    var icmpHeader: IcmpHeader = IcmpHeader
    @memcpy(NullablePointer[IcmpHeader](icmpHeader),
            data.offset(etherHeader.sizeof().usize() + ipv4Header.sizeof().usize()),
            icmpHeader.sizeof())

    @printf("icmp_type/code: %d/%d\n".cstring(), icmpHeader.icmp_type, icmpHeader.icmp_code)

/*
  Source: /usr/include/pcap/pcap.h:607
  Original Name: pcap_geterr/usr/include/pcap/pcap.h:607

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]

  fun pcap_geterr(parg0: NullablePointer[PcapS] tag): String =>
    var pcstring: Pointer[U8] =  @pcap_geterr(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
primitive Pcap
  fun lookupdev(): PcapDevice =>
    let errbuff: String = String(PcapConstants.max_err_length())

    var pcstring: Pointer[U8] = @pcap_lookupdev(errbuff.cstring())
    if (pcstring.is_null()) then
      let rv: PcapDevice = PcapDevice
      rv.err = errbuff.clone()
      return rv
    else
      let p: String iso = String.from_cstring(pcstring).clone()
      let rv: PcapDevice = PcapDevice
      rv.str = consume p
      return rv
    end

  fun lookupnet(device: PcapDevice) ? =>
    if (false) then error end

    match device.str
    | let n: None => error
    | let s: String val =>
      let rv: I32 = @pcap_lookupnet(s.cstring(), device.net, device.mask, device.err.cstring())
      if (rv != 0) then
        error
      end
    end

  fun open_live(device: PcapDevice, snaplen: I32, promisc: Bool, to_ms: I32) ? =>
    match device.str
    | let n: None => error
    | let s: String val =>
      if (promisc) then
        device.pcaps = @pcap_open_live(s.cstring(), snaplen, 1, to_ms, device.err.cstring())
      else
        device.pcaps = @pcap_open_live(s.cstring(), snaplen, 0, to_ms, device.err.cstring())
      end

      if (device.pcaps.is_none()) then
        @printf("X %d\n".cstring(), device.pcaps)
        @printf("X %s\n".cstring(), device.err.cstring())
        error
      end

    end

  fun datalink(dev: PcapDevice): LinkType =>
    LinkTypeResolver.apply(Clibpcap.pcap_datalink(dev.pcaps))

  fun compile_and_set(dev: PcapDevice, filter: String val, optimize: Bool) ? => // FIXME - Need to add ability to get errors
    var r: I32 = @pcap_compile(dev.pcaps, dev.bpfp, filter.cstring(), 0, dev.net)
    if (r != 0) then error end
    r = @pcap_setfilter(dev.pcaps, dev.bpfp)
    if (r != 0) then error end

  fun next(dev: PcapDevice) =>
    dev.packet = @pcap_next(dev.pcaps, dev.pcaphdr)




class PcapDevice
  var str: (String val | None) = None
  var err: String = String(PcapConstants.max_err_length())
  var net: IPv4 = IPv4
  var mask: IPv4 = IPv4
  var pcaps: NullablePointer[PcapS] = NullablePointer[PcapS].none()
  var bpfp: NullablePointer[Bpfprogram] = NullablePointer[Bpfprogram](Bpfprogram)
  var pcaphdr: NullablePointer[Pcappkthdr] = NullablePointer[Pcappkthdr](Pcappkthdr)
  var packet: Pointer[U8] = Pointer[U8]

  fun device(): String val ? =>
    match str
    | let b: None => error
    | let s: String val => s
    end

  fun eth(): Sniffethernet =>
    @cast[Sniffethernet](packet, 0)

  fun ip(): Sniffip =>
    @cast[Sniffip](packet, 14)

  fun tcp(ipS: Sniffip): Snifftcp =>
    @cast[Snifftcp](packet, 14 + ipS.ip_offset())

struct IPv4
  var a: U8 = 0
  var b: U8 = 0
  var c: U8 = 0
  var d: U8 = 0

  fun string(): String val =>
    a.string() + "." +
    b.string() + "." +
    c.string() + "." +
    d.string()
*/
