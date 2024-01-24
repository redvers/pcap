struct IPv4
  var a: U8 = 0
  var b: U8 = 0
  var c: U8 = 0
  var d: U8 = 0



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
  embed ts: Timeval = Timeval
  var caplen: U32 = U32(0)
  var len: U32 = U32(0)


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
  Source: fromtcpdumporg.h:6
  Original Name: sniff_ethernet
  Struct Size (bits):  112
  Struct Align (bits): 16

  Fields (Offset in bits):
     000000: [ArrayType size=(0-5)]->[FundamentalType(unsigned char) size=8] ether_dhost
     000048: [ArrayType size=(0-5)]->[FundamentalType(unsigned char) size=8] ether_shost
     000096: [FundamentalType(short unsigned int) size=16]: ether_type
*/

struct EtherHeader
  embed ether_dhost: EtherHost = EtherHost
  embed ether_shost: EtherHost = EtherHost
  var ether_type: U16 = U16(0)

struct EtherHost
  var a0: U8 = 0
  var a1: U8 = 0
  var a2: U8 = 0
  var a3: U8 = 0
  var a4: U8 = 0
  var a5: U8 = 0





