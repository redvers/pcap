
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
    @memcpy(NullablePointer[EtherHeader](etherHeader), data, 14)
    @printf("%02x:%02x:%02x:%02x:%02x:%02x -> %02x:%02x:%02x:%02x:%02x:%02x\n".cstring(),
            etherHeader.ether_shost.a0, etherHeader.ether_shost.a1,
            etherHeader.ether_shost.a2, etherHeader.ether_shost.a3,
            etherHeader.ether_shost.a4, etherHeader.ether_shost.a5,
            etherHeader.ether_dhost.a0, etherHeader.ether_dhost.a1,
            etherHeader.ether_dhost.a2, etherHeader.ether_dhost.a3,
            etherHeader.ether_dhost.a4, etherHeader.ether_dhost.a5)


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
