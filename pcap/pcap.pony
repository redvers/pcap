use "files"
use "lib:pcap"

use @printf[I32](fmt: Pointer[U8] tag, ...)
use @pcap_open_live[NullablePointer[PcapS]](device: Pointer[U8] tag, snaplen: I32, promisc: I32, to_ms: I32, errbuf: Pointer[U8] tag)
use @pcap_open_offline[NullablePointer[PcapS]](filename: Pointer[U8] tag, errbuf: Pointer[U8] tag)
use @pcap_open_dead[NullablePointer[PcapS]](linktype: I32, snaplen: I32)
use @pcap_compile[I32](pcaps: NullablePointer[PcapS] tag, bpfprogram: NullablePointer[Bpfprogram] tag, string: Pointer[U8] tag, optimize: I32, netmask: IPv4)
use @pcap_setfilter[I32](pcaps: NullablePointer[PcapS] tag, bpfprogram: NullablePointer[Bpfprogram] tag)
use @pcap_loop[I32](pcaps: NullablePointer[PcapS] tag, cnt: I32, cb: Pointer[None], userarg: Any tag)
use @pcap_geterr[Pointer[U8]](pcaps: NullablePointer[PcapS] tag)
use @pcap_next[Pointer[U8]](pcaps: NullablePointer[PcapS] tag, hdr: Pcappkthdr tag)
use @memcpy[Pointer[U8] iso](dst: Pointer[None], src: Pointer[U8] tag, size: U64)


type PcapSuccess is {(): None} val
type PcapFailure is {(String val): None} val
type PcapGotPacket is @{(PcapReceiver, Pcappkthdr iso, Pointer[U8] ref): None}
type PcapGotPacketICMP is {(PcapReceiver, Pcappkthdr iso, EtherHeader, IPv4Header, IcmpHeader, Array[U8] iso): None}

actor PonyPcap
  let errbuf: String ref = String(256)
  var pcaps:  NullablePointer[PcapS]
  var bpfprogram: NullablePointer[Bpfprogram] = NullablePointer[Bpfprogram](Bpfprogram)
  var hasfilter: Bool = false
  var is_file: Bool = false
  var cbicmp: PcapGotPacketICMP = {(obj: PcapReceiver, hdr: Pcappkthdr iso, etherHeader: EtherHeader, ipv4Header: IPv4Header, icmpHeader: IcmpHeader, payload: Array[U8] iso) => None}

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

  new create_from_file(fileauth: FileAuth,
          filename: String val,
          successcb: PcapSuccess,
             failcb: PcapFailure,
             filter: String val = "") =>

    is_file = true

		pcaps = @pcap_open_offline(filename.cstring(), errbuf.cstring())

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

  be start_capture_x(x: PcapReceiver tag) =>
    if (is_file) then
      var pcaphdr: Pcappkthdr iso = recover iso Pcappkthdr end
      var data: Pointer[U8] ref = @pcap_next(pcaps, pcaphdr)
      if (data.is_null()) then return end
        None
      PcapInternalCallbacks.internal_callback(x, consume pcaphdr, data)
    else
      @pcap_loop[I32](pcaps, 20, addressof PcapInternalCallbacks.internal_callback, x)
      @printf("20 cnt\n".cstring())
    end
    start_capture_x(x)

primitive PcapInternalCallbacks
  fun @internal_callback(obj: PcapReceiver tag, hdr: Pcappkthdr iso, data: Pointer[U8] ref) =>
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
      @printf("tcp\n".cstring())
    elseif (ipv4Header.ip_p == 17) then
      @printf("udp\n".cstring())
    else
      @printf("Unknown protocol: %d\n".cstring(), ipv4Header.ip_p)
    end

  fun icmp(obj: PcapReceiver tag, hdr: Pcappkthdr iso, data: Pointer[U8] ref, etherHeader: EtherHeader iso, ipv4Header: IPv4Header iso) => None
          /*
    @printf("[IPv4:ICMP]: [%s]:%s -> [%s]:%s ".cstring(),
            etherHeader.ether_shost.string().cstring(), ipv4Header.ip_src.string().cstring(),
            etherHeader.ether_dhost.string().cstring(), ipv4Header.ip_dst.string().cstring())
*/
    var icmpHeader: IcmpHeader iso =
    @memcpy[IcmpHeader iso^](NullablePointer[IcmpHeader](IcmpHeader),
            data.offset(etherHeader.sizeof().usize() + ipv4Header.sizeof().usize()),
            IcmpHeader.sizeof())

    obj.ipv4_icmp(consume hdr, consume etherHeader, consume ipv4Header, consume icmpHeader, recover iso Array[U8](0) end)
    /*

    @printf("%d/%d\n".cstring(), icmpHeader.icmp_type, icmpHeader.icmp_code)

//  be ipv4_icmp(


//type PcapGotPacketICMP[A: Any tag] is @{(A tag, Pcappkthdr iso, Pointer[U8] ref, EtherHeader, IPv4Header, IcmpHeader, Array[U8] iso): None}
*/
