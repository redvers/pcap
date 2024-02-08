use @snprintf[I32](buff: Pointer[U8] tag, size: U64, fmt: Pointer[U8] tag, ...)

struct IPv4
  var a: U8 = 0
  var b: U8 = 0
  var c: U8 = 0
  var d: U8 = 0

  fun string(): String iso^ =>
    let rv: String iso =
    recover iso
      String(16)
      .>append(a.string())
      .>append(".")
      .>append(b.string())
      .>append(".")
      .>append(c.string())
      .>append(".")
      .>append(d.string())
    end
    consume rv

/*
  Source: /usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h:8
  Original Name: timeval
  Struct Size (bits):  128
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(long int) size=64]: tv_sec
     000064: [FundamentalType(long int) size=64]: tv_usec
*/

struct Timeval
  var tv_sec: I64 = I64(0)
  var tv_usec: I64 = I64(0)


/*
  Source: /usr/include/x86_64-linux-gnu/bits/socket.h:180
  Original Name: sockaddr
  Struct Size (bits):  128
  Struct Align (bits): 16

  Fields (Offset in bits):
     000000: [FundamentalType(short unsigned int) size=16]: sa_family
     000016: [ArrayType size=(0-13)]->[FundamentalType(char) size=8] -- UNSUPPORTED - FIXME: sa_data
*/

struct Sockaddr
  var sa_family: U16 = U16(0)
  var sa_data: Pointer[U8] = Pointer[U8]


/*
  Source: /usr/include/pcap/bpf.h:117
  Original Name: bpf_program
  Struct Size (bits):  128
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(unsigned int) size=32]: bf_len
     000064: [PointerType size=64]->[Struct size=64,fid: f40]: bf_insns
*/

struct Bpfprogram
  var bf_len: U32 = U32(0)
  var bf_insns: NullablePointer[Bpfinsn] = NullablePointer[Bpfinsn].none()


/*
  Source: /usr/include/pcap/bpf.h:245
  Original Name: bpf_insn
  Struct Size (bits):  64
  Struct Align (bits): 32

  Fields (Offset in bits):
     000000: [FundamentalType(short unsigned int) size=16]: code
     000016: [FundamentalType(unsigned char) size=8]: jt
     000024: [FundamentalType(unsigned char) size=8]: jf
     000032: [FundamentalType(unsigned int) size=32]: k
*/

struct Bpfinsn
  var code: U16 = U16(0)
  var jt: U8 = U8(0)
  var jf: U8 = U8(0)
  var k: U32 = U32(0)


/*
  Source: /usr/include/pcap/pcap.h:163
  Original Name: pcap
  Struct Size (bits):
  Struct Align (bits):

  Fields (Offset in bits):
*/

struct PcapS


/*
  Source: /usr/include/pcap/pcap.h:164
  Original Name: pcap_dumper
  Struct Size (bits):
  Struct Align (bits):

  Fields (Offset in bits):
*/

struct Pcapdumper


/*
  Source: /usr/include/pcap/pcap.h:301
  Original Name: pcap_if
  Struct Size (bits):  320
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [PointerType size=64]->[Struct size=320,fid: f50]: next
     000064: [PointerType size=64]->[FundamentalType(char) size=8]: name
     000128: [PointerType size=64]->[FundamentalType(char) size=8]: description
     000192: [PointerType size=64]->[Struct size=320,fid: f50]: addresses
     000256: [FundamentalType(unsigned int) size=32]: flags
*/

struct Pcapif
  var next: NullablePointer[Pcapif] = NullablePointer[Pcapif].none()
  var name: Pointer[U8] = Pointer[U8]
  var description: Pointer[U8] = Pointer[U8]
  var addresses: NullablePointer[Pcapaddr] = NullablePointer[Pcapaddr].none()
  var flags: U32 = U32(0)


/*
  Source: /usr/include/pcap/pcap.h:322
  Original Name: pcap_addr
  Struct Size (bits):  320
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [PointerType size=64]->[Struct size=320,fid: f50]: next
     000064: [PointerType size=64]->[Struct size=128,fid: f26]: addr
     000128: [PointerType size=64]->[Struct size=128,fid: f26]: netmask
     000192: [PointerType size=64]->[Struct size=128,fid: f26]: broadaddr
     000256: [PointerType size=64]->[Struct size=128,fid: f26]: dstaddr
*/

struct Pcapaddr
  var next: NullablePointer[Pcapaddr] = NullablePointer[Pcapaddr].none()
  var addr: NullablePointer[Sockaddr] = NullablePointer[Sockaddr].none()
  var netmask: NullablePointer[Sockaddr] = NullablePointer[Sockaddr].none()
  var broadaddr: NullablePointer[Sockaddr] = NullablePointer[Sockaddr].none()
  var dstaddr: NullablePointer[Sockaddr] = NullablePointer[Sockaddr].none()


/*
  Source: /usr/include/pcap/pcap.h:207
  Original Name: pcap_file_header
  Struct Size (bits):  192
  Struct Align (bits): 32

  Fields (Offset in bits):
     000000: [FundamentalType(unsigned int) size=32]: magic
     000032: [FundamentalType(short unsigned int) size=16]: version_major
     000048: [FundamentalType(short unsigned int) size=16]: version_minor
     000064: [FundamentalType(int) size=32]: thiszone
     000096: [FundamentalType(unsigned int) size=32]: sigfigs
     000128: [FundamentalType(unsigned int) size=32]: snaplen
     000160: [FundamentalType(unsigned int) size=32]: linktype
*/

struct Pcapfileheader
  var magic: U32 = U32(0)
  var version_major: U16 = U16(0)
  var version_minor: U16 = U16(0)
  var thiszone: I32 = I32(0)
  var sigfigs: U32 = U32(0)
  var snaplen: U32 = U32(0)
  var linktype: U32 = U32(0)


/*
  Source: /usr/include/pcap/pcap.h:245
  Original Name: pcap_pkthdr
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [Struct size=128,fid: f16]: ts
     000128: [FundamentalType(unsigned int) size=32]: caplen
     000160: [FundamentalType(unsigned int) size=32]: len
*/

struct Pcappkthdr
  var tv_sec: I64 = I64(0)   // Embedded Timeval
  var tv_usec: I64 = I64(0)  // Embedded Timeval
  var caplen: U32 = U32(0)
  var len: U32 = U32(0)

  fun clone(): Pcappkthdr iso^ =>
    var rv: Pcappkthdr iso = recover iso Pcappkthdr end
    rv.tv_sec = this.tv_sec
    rv.tv_usec = this.tv_usec
    rv.caplen = this.caplen
    rv.len = this.len
    consume rv



//struct Timeval


/*
  Source: /usr/include/pcap/pcap.h:254
  Original Name: pcap_stat
  Struct Size (bits):  96
  Struct Align (bits): 32

  Fields (Offset in bits):
     000000: [FundamentalType(unsigned int) size=32]: ps_recv
     000032: [FundamentalType(unsigned int) size=32]: ps_drop
     000064: [FundamentalType(unsigned int) size=32]: ps_ifdrop
*/

struct Pcapstat
  var ps_recv: U32 = U32(0)
  var ps_drop: U32 = U32(0)
  var ps_ifdrop: U32 = U32(0)


/*
  Source: /usr/include/pcap/pcap.h:1036
  Original Name: pcap_rmtauth
  Struct Size (bits):  192
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(int) size=32]: type
     000064: [PointerType size=64]->[FundamentalType(char) size=8]: username
     000128: [PointerType size=64]->[FundamentalType(char) size=8]: password
*/

struct Pcaprmtauth
  var ptype: I32 = I32(0)
  var username: Pointer[U8] = Pointer[U8]
  var password: Pointer[U8] = Pointer[U8]


/*
  Source: /usr/include/pcap/pcap.h:1168
  Original Name: pcap_samp
  Struct Size (bits):  64
  Struct Align (bits): 32

  Fields (Offset in bits):
     000000: [FundamentalType(int) size=32]: method
     000032: [FundamentalType(int) size=32]: value
*/

struct Pcapsamp
  var method: I32 = I32(0)
  var value: I32 = I32(0)


/*
  Source: /usr/include/net/ethernet.h:39
  Original Name: ether_header
  Struct Size (bits):  112
  Struct Align (bits): 8

  Fields (Offset in bits):
     000000: [ArrayType size=(0-5)]->[FundamentalType(unsigned char) size=8]: ether_dhost
     000048: [ArrayType size=(0-5)]->[FundamentalType(unsigned char) size=8]: ether_shost
     000096: [FundamentalType(short unsigned int) size=16]: ether_type
*/

struct EtherHeader
  embed ether_dhost: EtherHost = EtherHost
  embed ether_shost: EtherHost = EtherHost
  var ether_type: U16 = 0x0800

	fun sizeof(): U64 => 14

  fun ref set_dhost(a: String val) ? =>
    let lower: String val = a.lower()
    var set: Array[String val] val = lower.split_by(":")
    if (set.size() != 6) then error end

    ether_dhost.a0 = hex_to_u8(set(0)?)?
    ether_dhost.a1 = hex_to_u8(set(1)?)?
    ether_dhost.a2 = hex_to_u8(set(2)?)?
    ether_dhost.a3 = hex_to_u8(set(3)?)?
    ether_dhost.a4 = hex_to_u8(set(4)?)?
    ether_dhost.a5 = hex_to_u8(set(5)?)?

  fun ref set_shost(a: String val) ? =>
    let lower: String val = a.lower()
    var set: Array[String val] val = lower.split_by(":")
    if (set.size() != 6) then error end

    ether_shost.a0 = hex_to_u8(set(0)?)?
    ether_shost.a1 = hex_to_u8(set(1)?)?
    ether_shost.a2 = hex_to_u8(set(2)?)?
    ether_shost.a3 = hex_to_u8(set(3)?)?
    ether_shost.a4 = hex_to_u8(set(4)?)?
    ether_shost.a5 = hex_to_u8(set(5)?)?



  fun hex_to_u8(a: String val): U8 ? =>
    if (a.size() == 0) then error end
    if (a.size() > 2) then error end

    if (a.size() == 1) then
      return single_hex_to_digit(a.at_offset(0)?)?
    end
    if (a.size() == 2) then
      let u: U8 = (single_hex_to_digit(a.at_offset(0)?)? * 16) + single_hex_to_digit(a.at_offset(1)?)?
      return u
    end
    0

  fun single_hex_to_digit(a: U8): U8 ? =>
    match a
    | if ((a >= '0') and (a <= '9')) => return (a - 0x30)
    | if ((a >= 'a') and (a <= 'f')) => return ((a - 0x61) + 10)
    | if ((a >= 'A') and (a <= 'F')) => return ((a - 0x41) + 10)
    else
      error
    end







  fun ref serialize(): Array[U8] val =>
    let rv: Array[U8] trn = recover trn Array[U8] end
    rv.push_u8(ether_dhost.a0)
    rv.push_u8(ether_dhost.a1)
    rv.push_u8(ether_dhost.a2)
    rv.push_u8(ether_dhost.a3)
    rv.push_u8(ether_dhost.a4)
    rv.push_u8(ether_dhost.a5)

    rv.push_u8(ether_dhost.a0)
    rv.push_u8(ether_dhost.a1)
    rv.push_u8(ether_dhost.a2)
    rv.push_u8(ether_dhost.a3)
    rv.push_u8(ether_dhost.a4)
    rv.push_u8(ether_dhost.a5)

    rv.push_u16(ether_type.bswap())

    consume rv



struct EtherHost
  var a0: U8 = 0
  var a1: U8 = 0
  var a2: U8 = 0
  var a3: U8 = 0
  var a4: U8 = 0
  var a5: U8 = 0

  fun string(): String iso^ =>
    let rvv: String iso = recover iso String(20) end
    @snprintf(rvv.cpointer(), 19, "%02x:%02x:%02x:%02x:%02x:%02x".cstring(),
          a0, a1, a2, a3, a4, a5)
  	rvv.recalc()
  	consume rvv



/*
  Source: /usr/include/netinet/ip.h:107
  Original Name: ip
  Struct Size (bits):  160
  Struct Align (bits): 32

  Fields (Offset in bits):
     000000: [FundamentalType(unsigned int) size=32]: ip_hl	  -- Note that these
     000004: [FundamentalType(unsigned int) size=32]: ip_v		-- offsets are
     000008: [FundamentalType(unsigned char) size=8]: ip_tos  -- < 8 bits...
     000016: [FundamentalType(short unsigned int) size=16]: ip_len
     000032: [FundamentalType(short unsigned int) size=16]: ip_id
     000048: [FundamentalType(short unsigned int) size=16]: ip_off
     000064: [FundamentalType(unsigned char) size=8]: ip_ttl
     000072: [FundamentalType(unsigned char) size=8]: ip_p
     000080: [FundamentalType(short unsigned int) size=16]: ip_sum
     000096: [Struct size=32,fid: f31]: ip_src
     000128: [Struct size=32,fid: f31]: ip_dst
*/

struct IPv4Header
  var ip_vhl: U8 = U8(0b0100_0101)          // 0
  var ip_tos: U8 = U8(0b000_10000)          // 1
  var ip_len: U16 = U16(60)        // 2
  var ip_id: U16 = U16(42)         // 4
  var ip_off: U16 = U16(0b010_00000_0000_0000)        // 6
  var ip_ttl: U8 = U8(64)          // 8
  var ip_p: U8 = U8(6)            // 9
  var ip_sum: U16 = U16(0)        // 10
  embed ip_src: IPv4 = IPv4       // 12
  embed ip_dst: IPv4 = IPv4       // 16

// This means that we currently silently discard any extra options.
// We will fix that at some point -- FIXME
	fun sizeof(): U64 => (((this.ip_vhl and 0x0f).i32()) * 4).u64()

  fun ref set_saddr(a: String val) ? =>
    var set: Array[String val] val = a.split_by(".")
    if (set.size() != 4) then error end

    ip_src.a = set(0)?.u8()?
    ip_src.b = set(1)?.u8()?
    ip_src.c = set(2)?.u8()?
    ip_src.d = set(3)?.u8()?

  fun ref set_daddr(a: String val) ? =>
    var set: Array[String val] val = a.split_by(".")
    if (set.size() != 4) then error end

    ip_dst.a = set(0)?.u8()?
    ip_dst.b = set(1)?.u8()?
    ip_dst.c = set(2)?.u8()?
    ip_dst.d = set(3)?.u8()?


  fun ref serialize(): Array[U8] val =>
    let rv: Array[U8] trn = recover trn Array[U8] end
    rv.push_u8(ip_vhl)
    rv.push_u8(ip_tos)
    rv.push_u16(ip_len.bswap())
    rv.push_u16(ip_id.bswap())
    rv.push_u16(ip_off.bswap())
    rv.push_u8(ip_ttl)
    rv.push_u8(ip_p)
    rv.push_u16(ip_sum.bswap())

    rv.push_u8(ip_src.a)
    rv.push_u8(ip_src.b)
    rv.push_u8(ip_src.c)
    rv.push_u8(ip_src.d)

    rv.push_u8(ip_dst.a)
    rv.push_u8(ip_dst.b)
    rv.push_u8(ip_dst.c)
    rv.push_u8(ip_dst.d)

    consume rv

/*
  Source: /usr/include/netinet/ip_icmp.h:26
  Original Name: icmphdr
  Struct Size (bits):  64
  Struct Align (bits): 32

  Fields (Offset in bits):
     000000: [FundamentalType(unsigned char) size=8]: type
     000008: [FundamentalType(unsigned char) size=8]: code
     000016: [FundamentalType(short unsigned int) size=16]: checksum
     000032: [UNION size=32] -- UNSUPPORTED FIXME: un
*/

struct IcmpHeader
  var icmp_type: U8 = U8(0)
  var icmp_code: U8 = U8(0)
  var icmp_checksum: U16 = U16(0)
  var icmp_un: U32 = U32(0)

	fun sizeof(): U64 => 8


/*
  Source: fromtcpdumporg.h:34
  Original Name: sniff_tcp
  Struct Size (bits):  160
  Struct Align (bits): 32

  Fields (Offset in bits):
     000000: [FundamentalType(short unsigned int) size=16]: th_sport
     000016: [FundamentalType(short unsigned int) size=16]: th_dport
     000032: [FundamentalType(unsigned int) size=32]: th_seq
     000064: [FundamentalType(unsigned int) size=32]: th_ack
     000096: [FundamentalType(unsigned char) size=8]: th_offx2
     000104: [FundamentalType(unsigned char) size=8]: th_flags
     000112: [FundamentalType(short unsigned int) size=16]: th_win
     000128: [FundamentalType(short unsigned int) size=16]: th_sum
     000144: [FundamentalType(short unsigned int) size=16]: th_urp
*/

struct TCPHeader
  var th_sport: U16 = U16(0)
  var th_dport: U16 = U16(0)
  var th_seq: U32 = U32(0)
  var th_ack: U32 = U32(0)
  var th_offx2: U8 = 0b1010_0000
  var th_flags: U8 = 0b0000_0010
  var th_win: U16 = 0xfaf0
  var th_sum: U16 = U16(0)
  var th_urp: U16 = U16(0)
  var o0:     U64 = U64(0)	// Allocated
  var o1:     U64 = U64(0)
  var o2:     U64 = U64(0)	// For reasons...
  var o3:     U64 = U64(0)
  var o4:     U64 = U64(0)

	fun sizeof(): U64 =>
		var size: U8 = this.th_offx2 and 0xf0
    size = size / 4
    size.u64()

  fun ref set_sport(n: U16) => th_sport = n
  fun ref set_dport(n: U16) => th_dport = n

  fun ref serialize(): Array[U8] val =>
    let rv: Array[U8] trn = recover trn Array[U8] end
    rv.push_u16(th_sport.bswap())
    rv.push_u16(th_dport.bswap())
    rv.push_u32(th_seq.bswap())
    rv.push_u32(th_ack.bswap())
    rv.push_u8(th_offx2)
    rv.push_u8(th_flags)
    rv.push_u16(th_win.bswap())
    rv.push_u16(th_sum.bswap())
    rv.push_u16(th_urp.bswap())
    rv.push_u64(0)
    rv.push_u64(0)
    rv.push_u32(0)
//    rv.push_u64(0)
//    rv.push_u64(0)

    consume rv




  fun tcp_sport(): U16 => this.th_sport.bswap()
  fun tcp_dport(): U16 => this.th_dport.bswap()

  fun is_cwr(): Bool => ((this.th_flags and 0b10000000) == 0b10000000)
  fun is_ece(): Bool => ((this.th_flags and 0b01000000) == 0b01000000)
  fun is_urg(): Bool => ((this.th_flags and 0b00100000) == 0b00100000)
  fun is_ack(): Bool => ((this.th_flags and 0b00010000) == 0b00010000)
  fun is_psh(): Bool => ((this.th_flags and 0b00001000) == 0b00001000)
  fun is_rst(): Bool => ((this.th_flags and 0b00000100) == 0b00000100)
  fun is_syn(): Bool => ((this.th_flags and 0b00000010) == 0b00000010)
  fun is_fin(): Bool => ((this.th_flags and 0b00000001) == 0b00000001)

/* Lovingly crafted by hand for UDP */

struct UDPHeader
  var uh_sport: U16 = U16(0)
  var uh_dport: U16 = U16(0)
  var uh_len: U16 = U16(0)
  var uh_checksum: U16 = U16(0)

  fun sizeof(): U64 => 8

  fun udp_sport(): U16 =>
    ifdef bigendian then
      this.uh_sport
    else
      this.uh_sport.bswap()
    end
  fun udp_dport(): U16 =>
    ifdef bigendian then
      this.uh_dport
    else
      this.uh_dport.bswap()
    end
