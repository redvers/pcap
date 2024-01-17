

/*
  Source: /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h:49
  Original Name: _IO_FILE
  Struct Size (bits):  1728
  Struct Align (bits): 64

  Fields (Offset in bits):
     000000: [FundamentalType(int) size=32]: _flags
     000064: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_read_ptr
     000128: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_read_end
     000192: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_read_base
     000256: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_write_base
     000320: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_write_ptr
     000384: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_write_end
     000448: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_buf_base
     000512: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_buf_end
     000576: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_save_base
     000640: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_backup_base
     000704: [PointerType size=64]->[FundamentalType(char) size=8]: _IO_save_end
     000768: [PointerType size=64]->[Struct size=,fid: f45]: _markers
     000832: [PointerType size=64]->[Struct size=1728,fid: f45]: _chain
     000896: [FundamentalType(int) size=32]: _fileno
     000928: [FundamentalType(int) size=32]: _flags2
     000960: [FundamentalType(long int) size=64]: _old_offset
     001024: [FundamentalType(short unsigned int) size=16]: _cur_column
     001040: [FundamentalType(signed char) size=8]: _vtable_offset
     001048: [ArrayType size=(0-0)]->[FundamentalType(char) size=8] -- UNSUPPORTED - FIXME: _shortbuf
     001088: [PointerType size=64]->[FundamentalType(void) size=0]: _lock
     001152: [FundamentalType(long int) size=64]: _offset
     001216: [PointerType size=64]->[Struct size=,fid: f45]: _codecvt
     001280: [PointerType size=64]->[Struct size=,fid: f45]: _wide_data
     001344: [PointerType size=64]->[Struct size=1728,fid: f45]: _freeres_list
     001408: [PointerType size=64]->[FundamentalType(void) size=0]: _freeres_buf
     001472: [FundamentalType(long unsigned int) size=64]: __pad5
     001536: [FundamentalType(int) size=32]: _mode
     001568: [ArrayType size=(0-19)]->[FundamentalType(char) size=8] -- UNSUPPORTED - FIXME: _unused2
*/

struct IOFILE


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
  var _tv_sec: I64 = I64(0)
  var _tv_usec: I64 = I64(0)


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
  var _sa_family: U16 = U16(0)
  var _sa_data: Pointer[U8] = Pointer[U8]


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
  var _bf_len: U32 = U32(0)
  var _bf_insns: NullablePointer[Bpfinsn] = NullablePointer[Bpfinsn].none()


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
  var _code: U16 = U16(0)
  var _jt: U8 = U8(0)
  var _jf: U8 = U8(0)
  var _k: U32 = U32(0)


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
  var _next: NullablePointer[Pcapif] = NullablePointer[Pcapif].none()
  var _name: Pointer[U8] = Pointer[U8]
  var _description: Pointer[U8] = Pointer[U8]
  var _addresses: NullablePointer[Pcapaddr] = NullablePointer[Pcapaddr].none()
  var _flags: U32 = U32(0)


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
  var _next: NullablePointer[Pcapaddr] = NullablePointer[Pcapaddr].none()
  var _addr: NullablePointer[Sockaddr] = NullablePointer[Sockaddr].none()
  var _netmask: NullablePointer[Sockaddr] = NullablePointer[Sockaddr].none()
  var _broadaddr: NullablePointer[Sockaddr] = NullablePointer[Sockaddr].none()
  var _dstaddr: NullablePointer[Sockaddr] = NullablePointer[Sockaddr].none()


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
  var _magic: U32 = U32(0)
  var _version_major: U16 = U16(0)
  var _version_minor: U16 = U16(0)
  var _thiszone: I32 = I32(0)
  var _sigfigs: U32 = U32(0)
  var _snaplen: U32 = U32(0)
  var _linktype: U32 = U32(0)


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
  var _ts: Timeval = Timeval
  var _caplen: U32 = U32(0)
  var _len: U32 = U32(0)


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
  var _ps_recv: U32 = U32(0)
  var _ps_drop: U32 = U32(0)
  var _ps_ifdrop: U32 = U32(0)


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
  var _type: I32 = I32(0)
  var _username: Pointer[U8] = Pointer[U8]
  var _password: Pointer[U8] = Pointer[U8]


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
  var _method: I32 = I32(0)
  var _value: I32 = I32(0)
