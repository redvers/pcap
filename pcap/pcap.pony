use @printf[I32](fmt: Pointer[U8] tag, ...)

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

