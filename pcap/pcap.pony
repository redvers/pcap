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
use @pcap_inject[I32](parg0: NullablePointer[PcapS] tag, parg1: Pointer[None] tag, parg2: U64)
use @pcap_set_immediate_mode[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)
use @pcap_set_buffer_size[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)
use @pcap_stats[I32](parg0: NullablePointer[PcapS] tag, parg1: NullablePointer[Pcapstat] tag)
use @pcap_close[None](parg0: NullablePointer[PcapS] tag)
use @pcap_findalldevs[I32](parg0: Pointer[NullablePointer[Pcapif]] tag, parg1: Pointer[U8] tag)



type PcapFindAllDevs is {(Array[PcapInterface] iso): None} val
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
            snaplen: ISize  = 65535,
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
      PcapInternalCallbacks.internal_callback(x, consume pcaphdr, data)
    else
      @pcap_loop[I32](pcaps, 5, addressof PcapInternalCallbacks.internal_callback, x)
    end
    start_capture_x(x)

  be send_packet(a: Array[U8] val) =>
    @pcap_inject(pcaps, a.cpointer(), a.size().u64())

  be set_immediate_mode(b: Bool) =>
    if (b) then
      @pcap_set_immediate_mode(pcaps, I32(1))
    else
      @pcap_set_immediate_mode(pcaps, I32(1))
    end

  be set_buffer_size(n: USize) =>
    @pcap_set_buffer_size(pcaps, n.i32())

  be stats(cb: {(Pcapstat val): None} val) =>
    let pcapstat: Pcapstat ref = Pcapstat
    @pcap_stats(pcaps, NullablePointer[Pcapstat](pcapstat))
    cb(pcapstat.clone())

  be findalldevs(cb: PcapFindAllDevs) =>
    let errbufftag: Pointer[U8] tag = errbuf.cstring()
    let rvv: Array[PcapInterface] iso = recover iso
      var pcapif: NullablePointer[Pcapif] = NullablePointer[Pcapif].none()
      let i: I32 = @pcap_findalldevs(addressof pcapif, errbufftag) // errbuf.cstring())

      var rv: Array[PcapInterface] = Array[PcapInterface]

      try
        while (true) do
          let pcapint: PcapInterface  = PcapInterface.create(pcapif)?
          pcapif = pcapint.apply(pcapif)?
          rv.push(pcapint)
        end
      else
        None
      end
      consume rv
    end
    cb(consume rvv)

  fun _final() => @pcap_close(pcaps)
