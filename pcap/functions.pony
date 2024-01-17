use "lib:pcap"
primitive Clibpcap


/*
  Source: /usr/include/inttypes.h:290
  Original Name: imaxabs/usr/include/inttypes.h:290

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(long int) size=64]
*/
/*
  fun imaxabs(n: I64): I64 =>
    @imaxabs(n)
*/


/*
  Source: /usr/include/inttypes.h:293
  Original Name: imaxdiv/usr/include/inttypes.h:293

  Return Value: [Struct size=128,fid: f5]

  Arguments:
    [FundamentalType(long int) size=64]
    [FundamentalType(long int) size=64]
*/
/*
  fun imaxdiv(numer: I64, denom: I64):  =>
    @imaxdiv(numer, denom)
*/


/*
  Source: /usr/include/inttypes.h:297
  Original Name: strtoimax/usr/include/inttypes.h:297

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
/*
  fun strtoimax(nptr: String, endptr: Array[String], base: I32): I64 =>
    @strtoimax(nptr.cstring(), endptr, base)
*/


/*
  Source: /usr/include/inttypes.h:301
  Original Name: strtoumax/usr/include/inttypes.h:301

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
/*
  fun strtoumax(nptr: String, endptr: Array[String], base: I32): U64 =>
    @strtoumax(nptr.cstring(), endptr, base)
*/


/*
  Source: /usr/include/inttypes.h:305
  Original Name: wcstoimax/usr/include/inttypes.h:305

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun wcstoimax(nptr: Pointer[I32] tag, endptr: NullablePointer[Pointer[I32]] tag, base: I32): I64 =>
    @wcstoimax(nptr, endptr, base)
*/


/*
  Source: /usr/include/inttypes.h:310
  Original Name: wcstoumax/usr/include/inttypes.h:310

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun wcstoumax(nptr: Pointer[I32] tag, endptr: NullablePointer[Pointer[I32]] tag, base: I32): U64 =>
    @wcstoumax(nptr, endptr, base)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/bits/byteswap.h:34
  Original Name: __bswap_16/usr/include/x86_64-linux-gnu/bits/byteswap.h:34

  Return Value: [FundamentalType(short unsigned int) size=16]

  Arguments:
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun __bswap_16(bsx: U16): U16 =>
    @__bswap_16(bsx)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/bits/byteswap.h:49
  Original Name: __bswap_32/usr/include/x86_64-linux-gnu/bits/byteswap.h:49

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun __bswap_32(bsx: U32): U32 =>
    @__bswap_32(bsx)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/bits/byteswap.h:70
  Original Name: __bswap_64/usr/include/x86_64-linux-gnu/bits/byteswap.h:70

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
*/
/*
  fun __bswap_64(bsx: U64): U64 =>
    @__bswap_64(bsx)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/bits/uintn-identity.h:33
  Original Name: __uint16_identity/usr/include/x86_64-linux-gnu/bits/uintn-identity.h:33

  Return Value: [FundamentalType(short unsigned int) size=16]

  Arguments:
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun __uint16_identity(x: U16): U16 =>
    @__uint16_identity(x)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/bits/uintn-identity.h:39
  Original Name: __uint32_identity/usr/include/x86_64-linux-gnu/bits/uintn-identity.h:39

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun __uint32_identity(x: U32): U32 =>
    @__uint32_identity(x)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/bits/uintn-identity.h:45
  Original Name: __uint64_identity/usr/include/x86_64-linux-gnu/bits/uintn-identity.h:45

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
*/
/*
  fun __uint64_identity(x: U64): U64 =>
    @__uint64_identity(x)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/select.h:102
  Original Name: select/usr/include/x86_64-linux-gnu/sys/select.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1024,fid: f18]
    [PointerType size=64]->[Struct size=1024,fid: f18]
    [PointerType size=64]->[Struct size=1024,fid: f18]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
/*
  fun select(nfds: I32, readfds: NullablePointer[] tag, writefds: NullablePointer[] tag, exceptfds: NullablePointer[] tag, timeout: NullablePointer[Timeval] tag): I32 =>
    @select(nfds, readfds, writefds, exceptfds, timeout)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/select.h:127
  Original Name: pselect/usr/include/x86_64-linux-gnu/sys/select.h:127

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1024,fid: f18]
    [PointerType size=64]->[Struct size=1024,fid: f18]
    [PointerType size=64]->[Struct size=1024,fid: f18]
    [PointerType size=64]->[Struct size=128,fid: f17]
    [PointerType size=64]->[Struct size=1024,fid: f14]
*/
/*
  fun pselect(nfds: I32, readfds: NullablePointer[] tag, writefds: NullablePointer[] tag, exceptfds: NullablePointer[] tag, timeout: NullablePointer[Timespec] tag, sigmask: NullablePointer[] tag): I32 =>
    @pselect(nfds, readfds, writefds, exceptfds, timeout, sigmask)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:67
  Original Name: gettimeofday/usr/include/x86_64-linux-gnu/sys/time.h:67

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
/*
  fun gettimeofday(tv: NullablePointer[Timeval] tag, tz: Pointer[None] tag): I32 =>
    @gettimeofday(tv, tz)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:86
  Original Name: settimeofday/usr/include/x86_64-linux-gnu/sys/time.h:86

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
    [PointerType size=64]->[Struct size=64,fid: f24]
*/
/*
  fun settimeofday(tv: NullablePointer[Timeval] tag, tz: NullablePointer[Timezone] tag): I32 =>
    @settimeofday(tv, tz)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:94
  Original Name: adjtime/usr/include/x86_64-linux-gnu/sys/time.h:94

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
/*
  fun adjtime(delta: NullablePointer[Timeval] tag, olddelta: NullablePointer[Timeval] tag): I32 =>
    @adjtime(delta, olddelta)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:149
  Original Name: getitimer/usr/include/x86_64-linux-gnu/sys/time.h:149

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=256,fid: f24]
*/
/*
  fun getitimer(which: I32, value: NullablePointer[Itimerval] tag): I32 =>
    @getitimer(which, value)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:155
  Original Name: setitimer/usr/include/x86_64-linux-gnu/sys/time.h:155

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=256,fid: f24]
    [PointerType size=64]->[Struct size=256,fid: f24]
*/
/*
  fun setitimer(which: I32, new: NullablePointer[Itimerval] tag, old: NullablePointer[Itimerval] tag): I32 =>
    @setitimer(which, new, old)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:162
  Original Name: utimes/usr/include/x86_64-linux-gnu/sys/time.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
/*
  fun utimes(file: String, tvp: NullablePointer[Timeval] tag): I32 =>
    @utimes(file.cstring(), tvp)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:189
  Original Name: lutimes/usr/include/x86_64-linux-gnu/sys/time.h:189

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
/*
  fun lutimes(file: String, tvp: NullablePointer[Timeval] tag): I32 =>
    @lutimes(file.cstring(), tvp)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:193
  Original Name: futimes/usr/include/x86_64-linux-gnu/sys/time.h:193

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
/*
  fun futimes(fd: I32, tvp: NullablePointer[Timeval] tag): I32 =>
    @futimes(fd, tvp)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/bits/socket.h:307
  Original Name: __cmsg_nxthdr/usr/include/x86_64-linux-gnu/bits/socket.h:307

  Return Value: [PointerType size=64]->[Struct size=128,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f26]
    [PointerType size=64]->[Struct size=128,fid: f26]
*/
/*
  fun __cmsg_nxthdr(mhdr: NullablePointer[Msghdr] tag, cmsg: NullablePointer[Cmsghdr] tag): NullablePointer[Cmsghdr] =>
    @__cmsg_nxthdr(mhdr, cmsg)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:102
  Original Name: socket/usr/include/x86_64-linux-gnu/sys/socket.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun socket(domain: I32, ptype: I32, protocol: I32): I32 =>
    @socket(domain, ptype, protocol)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:108
  Original Name: socketpair/usr/include/x86_64-linux-gnu/sys/socket.h:108

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun socketpair(domain: I32, ptype: I32, protocol: I32, fds: Pointer[I32] tag): I32 =>
    @socketpair(domain, ptype, protocol, fds)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:112
  Original Name: bind/usr/include/x86_64-linux-gnu/sys/socket.h:112

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun bind(fd: I32, addr: NullablePointer[Sockaddr] tag, len: U32): I32 =>
    @bind(fd, addr, len)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:116
  Original Name: getsockname/usr/include/x86_64-linux-gnu/sys/socket.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
/*
  fun getsockname(fd: I32, addr: NullablePointer[Sockaddr] tag, len: Pointer[U32] tag): I32 =>
    @getsockname(fd, addr, len)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:126
  Original Name: connect/usr/include/x86_64-linux-gnu/sys/socket.h:126

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun connect(fd: I32, addr: NullablePointer[Sockaddr] tag, len: U32): I32 =>
    @connect(fd, addr, len)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:130
  Original Name: getpeername/usr/include/x86_64-linux-gnu/sys/socket.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
/*
  fun getpeername(fd: I32, addr: NullablePointer[Sockaddr] tag, len: Pointer[U32] tag): I32 =>
    @getpeername(fd, addr, len)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:138
  Original Name: send/usr/include/x86_64-linux-gnu/sys/socket.h:138

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(int) size=32]
*/
/*
  fun send(fd: I32, buf: Pointer[None] tag, n: U64, flags: I32): I64 =>
    @send(fd, buf, n, flags)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:145
  Original Name: recv/usr/include/x86_64-linux-gnu/sys/socket.h:145

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(int) size=32]
*/
/*
  fun recv(fd: I32, buf: Pointer[None] tag, n: U64, flags: I32): I64 =>
    @recv(fd, buf, n, flags)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:152
  Original Name: sendto/usr/include/x86_64-linux-gnu/sys/socket.h:152

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun sendto(fd: I32, buf: Pointer[None] tag, n: U64, flags: I32, addr: NullablePointer[Sockaddr] tag, addrlen: U32): I64 =>
    @sendto(fd, buf, n, flags, addr, addrlen)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:163
  Original Name: recvfrom/usr/include/x86_64-linux-gnu/sys/socket.h:163

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
/*
  fun recvfrom(fd: I32, buf: Pointer[None] tag, n: U64, flags: I32, addr: NullablePointer[Sockaddr] tag, addrlen: Pointer[U32] tag): I64 =>
    @recvfrom(fd, buf, n, flags, addr, addrlen)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:174
  Original Name: sendmsg/usr/include/x86_64-linux-gnu/sys/socket.h:174

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=448,fid: f26]
    [FundamentalType(int) size=32]
*/
/*
  fun sendmsg(fd: I32, message: NullablePointer[Msghdr] tag, flags: I32): I64 =>
    @sendmsg(fd, message, flags)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:216
  Original Name: recvmsg/usr/include/x86_64-linux-gnu/sys/socket.h:216

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=448,fid: f26]
    [FundamentalType(int) size=32]
*/
/*
  fun recvmsg(fd: I32, message: NullablePointer[Msghdr] tag, flags: I32): I64 =>
    @recvmsg(fd, message, flags)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:255
  Original Name: getsockopt/usr/include/x86_64-linux-gnu/sys/socket.h:255

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
/*
  fun getsockopt(fd: I32, level: I32, optname: I32, optval: Pointer[None] tag, optlen: Pointer[U32] tag): I32 =>
    @getsockopt(fd, level, optname, optval, optlen)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:277
  Original Name: setsockopt/usr/include/x86_64-linux-gnu/sys/socket.h:277

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun setsockopt(fd: I32, level: I32, optname: I32, optval: Pointer[None] tag, optlen: U32): I32 =>
    @setsockopt(fd, level, optname, optval, optlen)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:296
  Original Name: listen/usr/include/x86_64-linux-gnu/sys/socket.h:296

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun listen(fd: I32, n: I32): I32 =>
    @listen(fd, n)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:306
  Original Name: accept/usr/include/x86_64-linux-gnu/sys/socket.h:306

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
/*
  fun accept(fd: I32, addr: NullablePointer[Sockaddr] tag, addrlen: Pointer[U32] tag): I32 =>
    @accept(fd, addr, addrlen)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:324
  Original Name: shutdown/usr/include/x86_64-linux-gnu/sys/socket.h:324

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun shutdown(fd: I32, how: I32): I32 =>
    @shutdown(fd, how)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:329
  Original Name: sockatmark/usr/include/x86_64-linux-gnu/sys/socket.h:329

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun sockatmark(fd: I32): I32 =>
    @sockatmark(fd)
*/


/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:337
  Original Name: isfdtype/usr/include/x86_64-linux-gnu/sys/socket.h:337

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun isfdtype(fd: I32, fdtype: I32): I32 =>
    @isfdtype(fd, fdtype)
*/


/*
  Source: /usr/include/netinet/in.h:382
  Original Name: ntohl/usr/include/netinet/in.h:382

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun ntohl(netlong: U32): U32 =>
    @ntohl(netlong)
*/


/*
  Source: /usr/include/netinet/in.h:383
  Original Name: ntohs/usr/include/netinet/in.h:383

  Return Value: [FundamentalType(short unsigned int) size=16]

  Arguments:
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun ntohs(netshort: U16): U16 =>
    @ntohs(netshort)
*/


/*
  Source: /usr/include/netinet/in.h:385
  Original Name: htonl/usr/include/netinet/in.h:385

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun htonl(hostlong: U32): U32 =>
    @htonl(hostlong)
*/


/*
  Source: /usr/include/netinet/in.h:387
  Original Name: htons/usr/include/netinet/in.h:387

  Return Value: [FundamentalType(short unsigned int) size=16]

  Arguments:
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun htons(hostshort: U16): U16 =>
    @htons(hostshort)
*/


/*
  Source: /usr/include/netinet/in.h:510
  Original Name: bindresvport/usr/include/netinet/in.h:510

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f34]
*/
/*
  fun bindresvport(sockfd: I32, sockin: NullablePointer[Sockaddrin] tag): I32 =>
    @bindresvport(sockfd, sockin)
*/


/*
  Source: /usr/include/netinet/in.h:513
  Original Name: bindresvport6/usr/include/netinet/in.h:513

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=224,fid: f34]
*/
/*
  fun bindresvport6(sockfd: I32, sockin: NullablePointer[Sockaddrin6] tag): I32 =>
    @bindresvport6(sockfd, sockin)
*/


/*
  Source: /usr/include/rpc/netdb.h:53
  Original Name: setrpcent/usr/include/rpc/netdb.h:53

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun setrpcent(stayopen: I32): None =>
    @setrpcent(stayopen)
*/


/*
  Source: /usr/include/rpc/netdb.h:54
  Original Name: endrpcent/usr/include/rpc/netdb.h:54

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
/*
  fun endrpcent(): None =>
    @endrpcent()
*/


/*
  Source: /usr/include/rpc/netdb.h:55
  Original Name: getrpcbyname/usr/include/rpc/netdb.h:55

  Return Value: [PointerType size=64]->[Struct size=192,fid: f36]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun getrpcbyname(name: String): NullablePointer[Rpcent] =>
    @getrpcbyname(name.cstring())
*/


/*
  Source: /usr/include/rpc/netdb.h:56
  Original Name: getrpcbynumber/usr/include/rpc/netdb.h:56

  Return Value: [PointerType size=64]->[Struct size=192,fid: f36]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun getrpcbynumber(number: I32): NullablePointer[Rpcent] =>
    @getrpcbynumber(number)
*/


/*
  Source: /usr/include/rpc/netdb.h:57
  Original Name: getrpcent/usr/include/rpc/netdb.h:57

  Return Value: [PointerType size=64]->[Struct size=192,fid: f36]

  Arguments:
*/
/*
  fun getrpcent(): NullablePointer[Rpcent] =>
    @getrpcent()
*/


/*
  Source: /usr/include/rpc/netdb.h:60
  Original Name: getrpcbyname_r/usr/include/rpc/netdb.h:60

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f36]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f36]
*/
/*
  fun getrpcbyname_r(name: String, resultbuf: NullablePointer[Rpcent] tag, buffer: String, buflen: U64, result: Pointer[NullablePointer[Rpcent]] tag): I32 =>
    @getrpcbyname_r(name.cstring(), resultbuf, buffer.cstring(), buflen, result)
*/


/*
  Source: /usr/include/rpc/netdb.h:64
  Original Name: getrpcbynumber_r/usr/include/rpc/netdb.h:64

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=192,fid: f36]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f36]
*/
/*
  fun getrpcbynumber_r(number: I32, resultbuf: NullablePointer[Rpcent] tag, buffer: String, buflen: U64, result: Pointer[NullablePointer[Rpcent]] tag): I32 =>
    @getrpcbynumber_r(number, resultbuf, buffer.cstring(), buflen, result)
*/


/*
  Source: /usr/include/rpc/netdb.h:68
  Original Name: getrpcent_r/usr/include/rpc/netdb.h:68

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f36]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f36]
*/
/*
  fun getrpcent_r(resultbuf: NullablePointer[Rpcent] tag, buffer: String, buflen: U64, result: Pointer[NullablePointer[Rpcent]] tag): I32 =>
    @getrpcent_r(resultbuf, buffer.cstring(), buflen, result)
*/


/*
  Source: /usr/include/netdb.h:59
  Original Name: __h_errno_location/usr/include/netdb.h:59

  Return Value: [PointerType size=64]->[FundamentalType(int) size=32]

  Arguments:
*/
/*
  fun __h_errno_location(): Pointer[I32] =>
    @__h_errno_location()
*/


/*
  Source: /usr/include/netdb.h:90
  Original Name: herror/usr/include/netdb.h:90

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun herror(str: String): None =>
    @herror(str.cstring())
*/


/*
  Source: /usr/include/netdb.h:93
  Original Name: hstrerror/usr/include/netdb.h:93

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun hstrerror(errnum: I32): String =>
    var pcstring: Pointer[U8] =  @hstrerror(errnum)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/netdb.h:115
  Original Name: sethostent/usr/include/netdb.h:115

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun sethostent(stayopen: I32): None =>
    @sethostent(stayopen)
*/


/*
  Source: /usr/include/netdb.h:121
  Original Name: endhostent/usr/include/netdb.h:121

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
/*
  fun endhostent(): None =>
    @endhostent()
*/


/*
  Source: /usr/include/netdb.h:128
  Original Name: gethostent/usr/include/netdb.h:128

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
*/
/*
  fun gethostent(): NullablePointer[Hostent] =>
    @gethostent()
*/


/*
  Source: /usr/include/netdb.h:135
  Original Name: gethostbyaddr/usr/include/netdb.h:135

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun gethostbyaddr(addr: Pointer[None] tag, len: U32, ptype: I32): NullablePointer[Hostent] =>
    @gethostbyaddr(addr, len, ptype)
*/


/*
  Source: /usr/include/netdb.h:142
  Original Name: gethostbyname/usr/include/netdb.h:142

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun gethostbyname(name: String): NullablePointer[Hostent] =>
    @gethostbyname(name.cstring())
*/


/*
  Source: /usr/include/netdb.h:153
  Original Name: gethostbyname2/usr/include/netdb.h:153

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
/*
  fun gethostbyname2(name: String, af: I32): NullablePointer[Hostent] =>
    @gethostbyname2(name.cstring(), af)
*/


/*
  Source: /usr/include/netdb.h:165
  Original Name: gethostent_r/usr/include/netdb.h:165

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun gethostent_r(resultbuf: NullablePointer[Hostent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Hostent]] tag, herrnop: Pointer[I32] tag): I32 =>
    @gethostent_r(resultbuf, buf.cstring(), buflen, result, herrnop)
*/


/*
  Source: /usr/include/netdb.h:170
  Original Name: gethostbyaddr_r/usr/include/netdb.h:170

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun gethostbyaddr_r(addr: Pointer[None] tag, len: U32, ptype: I32, resultbuf: NullablePointer[Hostent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Hostent]] tag, herrnop: Pointer[I32] tag): I32 =>
    @gethostbyaddr_r(addr, len, ptype, resultbuf, buf.cstring(), buflen, result, herrnop)
*/


/*
  Source: /usr/include/netdb.h:177
  Original Name: gethostbyname_r/usr/include/netdb.h:177

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun gethostbyname_r(name: String, resultbuf: NullablePointer[Hostent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Hostent]] tag, herrnop: Pointer[I32] tag): I32 =>
    @gethostbyname_r(name.cstring(), resultbuf, buf.cstring(), buflen, result, herrnop)
*/


/*
  Source: /usr/include/netdb.h:183
  Original Name: gethostbyname2_r/usr/include/netdb.h:183

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun gethostbyname2_r(name: String, af: I32, resultbuf: NullablePointer[Hostent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Hostent]] tag, herrnop: Pointer[I32] tag): I32 =>
    @gethostbyname2_r(name.cstring(), af, resultbuf, buf.cstring(), buflen, result, herrnop)
*/


/*
  Source: /usr/include/netdb.h:196
  Original Name: setnetent/usr/include/netdb.h:196

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun setnetent(stayopen: I32): None =>
    @setnetent(stayopen)
*/


/*
  Source: /usr/include/netdb.h:202
  Original Name: endnetent/usr/include/netdb.h:202

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
/*
  fun endnetent(): None =>
    @endnetent()
*/


/*
  Source: /usr/include/netdb.h:209
  Original Name: getnetent/usr/include/netdb.h:209

  Return Value: [PointerType size=64]->[Struct size=192,fid: f37]

  Arguments:
*/
/*
  fun getnetent(): NullablePointer[Netent] =>
    @getnetent()
*/


/*
  Source: /usr/include/netdb.h:216
  Original Name: getnetbyaddr/usr/include/netdb.h:216

  Return Value: [PointerType size=64]->[Struct size=192,fid: f37]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun getnetbyaddr(net: U32, ptype: I32): NullablePointer[Netent] =>
    @getnetbyaddr(net, ptype)
*/


/*
  Source: /usr/include/netdb.h:222
  Original Name: getnetbyname/usr/include/netdb.h:222

  Return Value: [PointerType size=64]->[Struct size=192,fid: f37]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun getnetbyname(name: String): NullablePointer[Netent] =>
    @getnetbyname(name.cstring())
*/


/*
  Source: /usr/include/netdb.h:235
  Original Name: getnetent_r/usr/include/netdb.h:235

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f37]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f37]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun getnetent_r(resultbuf: NullablePointer[Netent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Netent]] tag, herrnop: Pointer[I32] tag): I32 =>
    @getnetent_r(resultbuf, buf.cstring(), buflen, result, herrnop)
*/


/*
  Source: /usr/include/netdb.h:240
  Original Name: getnetbyaddr_r/usr/include/netdb.h:240

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=192,fid: f37]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f37]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun getnetbyaddr_r(net: U32, ptype: I32, resultbuf: NullablePointer[Netent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Netent]] tag, herrnop: Pointer[I32] tag): I32 =>
    @getnetbyaddr_r(net, ptype, resultbuf, buf.cstring(), buflen, result, herrnop)
*/


/*
  Source: /usr/include/netdb.h:246
  Original Name: getnetbyname_r/usr/include/netdb.h:246

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f37]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f37]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun getnetbyname_r(name: String, resultbuf: NullablePointer[Netent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Netent]] tag, herrnop: Pointer[I32] tag): I32 =>
    @getnetbyname_r(name.cstring(), resultbuf, buf.cstring(), buflen, result, herrnop)
*/


/*
  Source: /usr/include/netdb.h:268
  Original Name: setservent/usr/include/netdb.h:268

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun setservent(stayopen: I32): None =>
    @setservent(stayopen)
*/


/*
  Source: /usr/include/netdb.h:274
  Original Name: endservent/usr/include/netdb.h:274

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
/*
  fun endservent(): None =>
    @endservent()
*/


/*
  Source: /usr/include/netdb.h:281
  Original Name: getservent/usr/include/netdb.h:281

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
*/
/*
  fun getservent(): NullablePointer[Servent] =>
    @getservent()
*/


/*
  Source: /usr/include/netdb.h:288
  Original Name: getservbyname/usr/include/netdb.h:288

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun getservbyname(name: String, proto: String): NullablePointer[Servent] =>
    @getservbyname(name.cstring(), proto.cstring())
*/


/*
  Source: /usr/include/netdb.h:295
  Original Name: getservbyport/usr/include/netdb.h:295

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun getservbyport(port: I32, proto: String): NullablePointer[Servent] =>
    @getservbyport(port, proto.cstring())
*/


/*
  Source: /usr/include/netdb.h:306
  Original Name: getservent_r/usr/include/netdb.h:306

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=256,fid: f38]
*/
/*
  fun getservent_r(resultbuf: NullablePointer[Servent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Servent]] tag): I32 =>
    @getservent_r(resultbuf, buf.cstring(), buflen, result)
*/


/*
  Source: /usr/include/netdb.h:310
  Original Name: getservbyname_r/usr/include/netdb.h:310

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=256,fid: f38]
*/
/*
  fun getservbyname_r(name: String, proto: String, resultbuf: NullablePointer[Servent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Servent]] tag): I32 =>
    @getservbyname_r(name.cstring(), proto.cstring(), resultbuf, buf.cstring(), buflen, result)
*/


/*
  Source: /usr/include/netdb.h:316
  Original Name: getservbyport_r/usr/include/netdb.h:316

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=256,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=256,fid: f38]
*/
/*
  fun getservbyport_r(port: I32, proto: String, resultbuf: NullablePointer[Servent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Servent]] tag): I32 =>
    @getservbyport_r(port, proto.cstring(), resultbuf, buf.cstring(), buflen, result)
*/


/*
  Source: /usr/include/netdb.h:336
  Original Name: setprotoent/usr/include/netdb.h:336

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun setprotoent(stayopen: I32): None =>
    @setprotoent(stayopen)
*/


/*
  Source: /usr/include/netdb.h:342
  Original Name: endprotoent/usr/include/netdb.h:342

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
/*
  fun endprotoent(): None =>
    @endprotoent()
*/


/*
  Source: /usr/include/netdb.h:349
  Original Name: getprotoent/usr/include/netdb.h:349

  Return Value: [PointerType size=64]->[Struct size=192,fid: f38]

  Arguments:
*/
/*
  fun getprotoent(): NullablePointer[Protoent] =>
    @getprotoent()
*/


/*
  Source: /usr/include/netdb.h:355
  Original Name: getprotobyname/usr/include/netdb.h:355

  Return Value: [PointerType size=64]->[Struct size=192,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun getprotobyname(name: String): NullablePointer[Protoent] =>
    @getprotobyname(name.cstring())
*/


/*
  Source: /usr/include/netdb.h:361
  Original Name: getprotobynumber/usr/include/netdb.h:361

  Return Value: [PointerType size=64]->[Struct size=192,fid: f38]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun getprotobynumber(proto: I32): NullablePointer[Protoent] =>
    @getprotobynumber(proto)
*/


/*
  Source: /usr/include/netdb.h:372
  Original Name: getprotoent_r/usr/include/netdb.h:372

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=192,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f38]
*/
/*
  fun getprotoent_r(resultbuf: NullablePointer[Protoent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Protoent]] tag): I32 =>
    @getprotoent_r(resultbuf, buf.cstring(), buflen, result)
*/


/*
  Source: /usr/include/netdb.h:376
  Original Name: getprotobyname_r/usr/include/netdb.h:376

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f38]
*/
/*
  fun getprotobyname_r(name: String, resultbuf: NullablePointer[Protoent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Protoent]] tag): I32 =>
    @getprotobyname_r(name.cstring(), resultbuf, buf.cstring(), buflen, result)
*/


/*
  Source: /usr/include/netdb.h:381
  Original Name: getprotobynumber_r/usr/include/netdb.h:381

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=192,fid: f38]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f38]
*/
/*
  fun getprotobynumber_r(proto: I32, resultbuf: NullablePointer[Protoent] tag, buf: String, buflen: U64, result: Pointer[NullablePointer[Protoent]] tag): I32 =>
    @getprotobynumber_r(proto, resultbuf, buf.cstring(), buflen, result)
*/


/*
  Source: /usr/include/netdb.h:393
  Original Name: setnetgrent/usr/include/netdb.h:393

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun setnetgrent(netgroup: String): I32 =>
    @setnetgrent(netgroup.cstring())
*/


/*
  Source: /usr/include/netdb.h:401
  Original Name: endnetgrent/usr/include/netdb.h:401

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
/*
  fun endnetgrent(): None =>
    @endnetgrent()
*/


/*
  Source: /usr/include/netdb.h:410
  Original Name: getnetgrent/usr/include/netdb.h:410

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun getnetgrent(hostp: Array[String], userp: Array[String], domainp: Array[String]): I32 =>
    @getnetgrent(hostp, userp, domainp)
*/


/*
  Source: /usr/include/netdb.h:421
  Original Name: innetgr/usr/include/netdb.h:421

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun innetgr(netgroup: String, host: String, user: String, domain: String): I32 =>
    @innetgr(netgroup.cstring(), host.cstring(), user.cstring(), domain.cstring())
*/


/*
  Source: /usr/include/netdb.h:430
  Original Name: getnetgrent_r/usr/include/netdb.h:430

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
*/
/*
  fun getnetgrent_r(hostp: Array[String], userp: Array[String], domainp: Array[String], buffer: String, buflen: U64): I32 =>
    @getnetgrent_r(hostp, userp, domainp, buffer.cstring(), buflen)
*/


/*
  Source: /usr/include/netdb.h:449
  Original Name: rcmd/usr/include/netdb.h:449

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(short unsigned int) size=16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun rcmd(ahost: Array[String], rport: U16, locuser: String, remuser: String, cmd: String, fd2p: Pointer[I32] tag): I32 =>
    @rcmd(ahost, rport, locuser.cstring(), remuser.cstring(), cmd.cstring(), fd2p)
*/


/*
  Source: /usr/include/netdb.h:461
  Original Name: rcmd_af/usr/include/netdb.h:461

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(short unsigned int) size=16]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun rcmd_af(ahost: Array[String], rport: U16, locuser: String, remuser: String, cmd: String, fd2p: Pointer[I32] tag, af: U16): I32 =>
    @rcmd_af(ahost, rport, locuser.cstring(), remuser.cstring(), cmd.cstring(), fd2p, af)
*/


/*
  Source: /usr/include/netdb.h:477
  Original Name: rexec/usr/include/netdb.h:477

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun rexec(ahost: Array[String], rport: I32, name: String, pass: String, cmd: String, fd2p: Pointer[I32] tag): I32 =>
    @rexec(ahost, rport, name.cstring(), pass.cstring(), cmd.cstring(), fd2p)
*/


/*
  Source: /usr/include/netdb.h:489
  Original Name: rexec_af/usr/include/netdb.h:489

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun rexec_af(ahost: Array[String], rport: I32, name: String, pass: String, cmd: String, fd2p: Pointer[I32] tag, af: U16): I32 =>
    @rexec_af(ahost, rport, name.cstring(), pass.cstring(), cmd.cstring(), fd2p, af)
*/


/*
  Source: /usr/include/netdb.h:503
  Original Name: ruserok/usr/include/netdb.h:503

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun ruserok(rhost: String, suser: I32, remuser: String, locuser: String): I32 =>
    @ruserok(rhost.cstring(), suser, remuser.cstring(), locuser.cstring())
*/


/*
  Source: /usr/include/netdb.h:513
  Original Name: ruserok_af/usr/include/netdb.h:513

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun ruserok_af(rhost: String, suser: I32, remuser: String, locuser: String, af: U16): I32 =>
    @ruserok_af(rhost.cstring(), suser, remuser.cstring(), locuser.cstring(), af)
*/


/*
  Source: /usr/include/netdb.h:526
  Original Name: iruserok/usr/include/netdb.h:526

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun iruserok(raddr: U32, suser: I32, remuser: String, locuser: String): I32 =>
    @iruserok(raddr, suser, remuser.cstring(), locuser.cstring())
*/


/*
  Source: /usr/include/netdb.h:537
  Original Name: iruserok_af/usr/include/netdb.h:537

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun iruserok_af(raddr: Pointer[None] tag, suser: I32, remuser: String, locuser: String, af: U16): I32 =>
    @iruserok_af(raddr, suser, remuser.cstring(), locuser.cstring(), af)
*/


/*
  Source: /usr/include/netdb.h:549
  Original Name: rresvport/usr/include/netdb.h:549

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
/*
  fun rresvport(alport: Pointer[I32] tag): I32 =>
    @rresvport(alport)
*/


/*
  Source: /usr/include/netdb.h:558
  Original Name: rresvport_af/usr/include/netdb.h:558

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(short unsigned int) size=16]
*/
/*
  fun rresvport_af(alport: Pointer[I32] tag, af: U16): I32 =>
    @rresvport_af(alport, af)
*/


/*
  Source: /usr/include/netdb.h:660
  Original Name: getaddrinfo/usr/include/netdb.h:660

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=384,fid: f38]
    [PointerType size=64]->[PointerType size=64]->[Struct size=384,fid: f38]
*/
/*
  fun getaddrinfo(name: String, service: String, req: NullablePointer[Addrinfo] tag, pai: Pointer[NullablePointer[Addrinfo]] tag): I32 =>
    @getaddrinfo(name.cstring(), service.cstring(), req, pai)
*/


/*
  Source: /usr/include/netdb.h:666
  Original Name: freeaddrinfo/usr/include/netdb.h:666

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f38]
*/
/*
  fun freeaddrinfo(ai: NullablePointer[Addrinfo] tag): None =>
    @freeaddrinfo(ai)
*/


/*
  Source: /usr/include/netdb.h:669
  Original Name: gai_strerror/usr/include/netdb.h:669

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun gai_strerror(ecode: I32): String =>
    var pcstring: Pointer[U8] =  @gai_strerror(ecode)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/netdb.h:675
  Original Name: getnameinfo/usr/include/netdb.h:675

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f26]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(int) size=32]
*/
/*
  fun getnameinfo(sa: NullablePointer[Sockaddr] tag, salen: U32, host: String, hostlen: U32, serv: String, servlen: U32, flags: I32): I32 =>
    @getnameinfo(sa, salen, host.cstring(), hostlen, serv.cstring(), servlen, flags)
*/


/*
  Source: /usr/include/arpa/inet.h:34
  Original Name: inet_addr/usr/include/arpa/inet.h:34

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun inet_addr(cp: String): U32 =>
    @inet_addr(cp.cstring())
*/


/*
  Source: /usr/include/arpa/inet.h:37
  Original Name: inet_lnaof/usr/include/arpa/inet.h:37

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [Struct size=32,fid: f34]
*/
/*
  fun inet_lnaof(in: Inaddr tag): U32 =>
    @inet_lnaof(in)
*/


/*
  Source: /usr/include/arpa/inet.h:41
  Original Name: inet_makeaddr/usr/include/arpa/inet.h:41

  Return Value: [Struct size=32,fid: f34]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun inet_makeaddr(net: U32, host: U32): Inaddr =>
    @inet_makeaddr(net, host)
*/


/*
  Source: /usr/include/arpa/inet.h:45
  Original Name: inet_netof/usr/include/arpa/inet.h:45

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [Struct size=32,fid: f34]
*/
/*
  fun inet_netof(in: Inaddr tag): U32 =>
    @inet_netof(in)
*/


/*
  Source: /usr/include/arpa/inet.h:49
  Original Name: inet_network/usr/include/arpa/inet.h:49

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun inet_network(cp: String): U32 =>
    @inet_network(cp.cstring())
*/


/*
  Source: /usr/include/arpa/inet.h:53
  Original Name: inet_ntoa/usr/include/arpa/inet.h:53

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [Struct size=32,fid: f34]
*/
/*
  fun inet_ntoa(in: Inaddr tag): String =>
    var pcstring: Pointer[U8] =  @inet_ntoa(in)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/arpa/inet.h:58
  Original Name: inet_pton/usr/include/arpa/inet.h:58

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
/*
  fun inet_pton(af: I32, cp: String, buf: Pointer[None] tag): I32 =>
    @inet_pton(af, cp.cstring(), buf)
*/


/*
  Source: /usr/include/arpa/inet.h:64
  Original Name: inet_ntop/usr/include/arpa/inet.h:64

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun inet_ntop(af: I32, cp: Pointer[None] tag, buf: String, len: U32): String =>
    var pcstring: Pointer[U8] =  @inet_ntop(af, cp, buf.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/arpa/inet.h:73
  Original Name: inet_aton/usr/include/arpa/inet.h:73

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=32,fid: f34]
*/
/*
  fun inet_aton(cp: String, inp: NullablePointer[Inaddr] tag): I32 =>
    @inet_aton(cp.cstring(), inp)
*/


/*
  Source: /usr/include/arpa/inet.h:77
  Original Name: inet_neta/usr/include/arpa/inet.h:77

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
*/
/*
  fun inet_neta(net: U32, buf: String, len: U64): String =>
    var pcstring: Pointer[U8] =  @inet_neta(net, buf.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/arpa/inet.h:83
  Original Name: inet_net_ntop/usr/include/arpa/inet.h:83

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
*/
/*
  fun inet_net_ntop(af: I32, cp: Pointer[None] tag, bits: I32, buf: String, len: U64): String =>
    var pcstring: Pointer[U8] =  @inet_net_ntop(af, cp, bits, buf.cstring(), len)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/arpa/inet.h:89
  Original Name: inet_net_pton/usr/include/arpa/inet.h:89

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
*/
/*
  fun inet_net_pton(af: I32, cp: String, buf: Pointer[None] tag, len: U64): I32 =>
    @inet_net_pton(af, cp.cstring(), buf, len)
*/


/*
  Source: /usr/include/arpa/inet.h:95
  Original Name: inet_nsap_addr/usr/include/arpa/inet.h:95

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
/*
  fun inet_nsap_addr(cp: String, buf: String, len: I32): U32 =>
    @inet_nsap_addr(cp.cstring(), buf.cstring(), len)
*/


/*
  Source: /usr/include/arpa/inet.h:100
  Original Name: inet_nsap_ntoa/usr/include/arpa/inet.h:100

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun inet_nsap_ntoa(len: I32, cp: String, buf: String): String =>
    var pcstring: Pointer[U8] =  @inet_nsap_ntoa(len, cp.cstring(), buf.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/pcap/bpf.h:272
  Original Name: bpf_filter/usr/include/pcap/bpf.h:272

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=64,fid: f40]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(unsigned int) size=32]
*/
/*
  fun bpf_filter(parg0: NullablePointer[Bpfinsn] tag, parg1: String, parg2: U32, parg3: U32): U32 =>
    @bpf_filter(parg0, parg1.cstring(), parg2, parg3)
*/


/*
  Source: /usr/include/pcap/bpf.h:275
  Original Name: bpf_validate/usr/include/pcap/bpf.h:275

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=64,fid: f40]
    [FundamentalType(int) size=32]
*/
/*
  fun bpf_validate(f: NullablePointer[Bpfinsn] tag, len: I32): I32 =>
    @bpf_validate(f, len)
*/


/*
  Source: /usr/include/pcap/bpf.h:278
  Original Name: bpf_image/usr/include/pcap/bpf.h:278

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=64,fid: f40]
    [FundamentalType(int) size=32]
*/
/*
  fun bpf_image(parg0: NullablePointer[Bpfinsn] tag, parg1: I32): String =>
    var pcstring: Pointer[U8] =  @bpf_image(parg0, parg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/pcap/bpf.h:281
  Original Name: bpf_dump/usr/include/pcap/bpf.h:281

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f40]
    [FundamentalType(int) size=32]
*/
/*
  fun bpf_dump(parg0: NullablePointer[Bpfprogram] tag, parg1: I32): None =>
    @bpf_dump(parg0, parg1)
*/


/*
  Source: /usr/include/stdio.h:152
  Original Name: remove/usr/include/stdio.h:152

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun remove(filename: String): I32 =>
    @remove(filename.cstring())
*/


/*
  Source: /usr/include/stdio.h:154
  Original Name: rename/usr/include/stdio.h:154

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun rename(old: String, new: String): I32 =>
    @rename(old.cstring(), new.cstring())
*/


/*
  Source: /usr/include/stdio.h:158
  Original Name: renameat/usr/include/stdio.h:158

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun renameat(oldfd: I32, old: String, newfd: I32, new: String): I32 =>
    @renameat(oldfd, old.cstring(), newfd, new.cstring())
*/


/*
  Source: /usr/include/stdio.h:178
  Original Name: fclose/usr/include/stdio.h:178

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fclose(stream: NullablePointer[IOFILE] tag): I32 =>
    @fclose(stream)
*/


/*
  Source: /usr/include/stdio.h:188
  Original Name: tmpfile/usr/include/stdio.h:188

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
*/
/*
  fun tmpfile(): NullablePointer[IOFILE] =>
    @tmpfile()
*/


/*
  Source: /usr/include/stdio.h:205
  Original Name: tmpnam/usr/include/stdio.h:205

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun tmpnam(parg0: String): String =>
    var pcstring: Pointer[U8] =  @tmpnam(parg0.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/stdio.h:210
  Original Name: tmpnam_r/usr/include/stdio.h:210

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun tmpnam_r(s: String): String =>
    var pcstring: Pointer[U8] =  @tmpnam_r(s.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/stdio.h:222
  Original Name: tempnam/usr/include/stdio.h:222

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun tempnam(dir: String, pfx: String): String =>
    var pcstring: Pointer[U8] =  @tempnam(dir.cstring(), pfx.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/stdio.h:230
  Original Name: fflush/usr/include/stdio.h:230

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fflush(stream: NullablePointer[IOFILE] tag): I32 =>
    @fflush(stream)
*/


/*
  Source: /usr/include/stdio.h:239
  Original Name: fflush_unlocked/usr/include/stdio.h:239

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fflush_unlocked(stream: NullablePointer[IOFILE] tag): I32 =>
    @fflush_unlocked(stream)
*/


/*
  Source: /usr/include/stdio.h:258
  Original Name: fopen/usr/include/stdio.h:258

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun fopen(parg0: String, parg1: String): NullablePointer[IOFILE] =>
    @fopen(parg0.cstring(), parg1.cstring())
*/


/*
  Source: /usr/include/stdio.h:265
  Original Name: freopen/usr/include/stdio.h:265

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun freopen(filename: String, modes: String, stream: NullablePointer[IOFILE] tag): NullablePointer[IOFILE] =>
    @freopen(filename.cstring(), modes.cstring(), stream)
*/


/*
  Source: /usr/include/stdio.h:293
  Original Name: fdopen/usr/include/stdio.h:293

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun fdopen(fd: I32, modes: String): NullablePointer[IOFILE] =>
    @fdopen(fd, modes.cstring())
*/


/*
  Source: /usr/include/stdio.h:308
  Original Name: fmemopen/usr/include/stdio.h:308

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun fmemopen(s: Pointer[None] tag, len: U64, modes: String): NullablePointer[IOFILE] =>
    @fmemopen(s, len, modes.cstring())
*/


/*
  Source: /usr/include/stdio.h:314
  Original Name: open_memstream/usr/include/stdio.h:314

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
*/
/*
  fun open_memstream(bufloc: Array[String], sizeloc: Pointer[U64] tag): NullablePointer[IOFILE] =>
    @open_memstream(bufloc, sizeloc)
*/


/*
  Source: /usr/include/stdio.h:328
  Original Name: setbuf/usr/include/stdio.h:328

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun setbuf(stream: NullablePointer[IOFILE] tag, buf: String): None =>
    @setbuf(stream, buf.cstring())
*/


/*
  Source: /usr/include/stdio.h:332
  Original Name: setvbuf/usr/include/stdio.h:332

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(long unsigned int) size=64]
*/
/*
  fun setvbuf(stream: NullablePointer[IOFILE] tag, buf: String, modes: I32, n: U64): I32 =>
    @setvbuf(stream, buf.cstring(), modes, n)
*/


/*
  Source: /usr/include/stdio.h:338
  Original Name: setbuffer/usr/include/stdio.h:338

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
*/
/*
  fun setbuffer(stream: NullablePointer[IOFILE] tag, buf: String, size: U64): None =>
    @setbuffer(stream, buf.cstring(), size)
*/


/*
  Source: /usr/include/stdio.h:342
  Original Name: setlinebuf/usr/include/stdio.h:342

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun setlinebuf(stream: NullablePointer[IOFILE] tag): None =>
    @setlinebuf(stream)
*/


/*
  Source: /usr/include/stdio.h:350
  Original Name: fprintf/usr/include/stdio.h:350

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*/*
  fun fprintf(parg0: NullablePointer[IOFILE] tag, parg1: String, ...): I32 =>
    @fprintf(parg0, parg1.cstring(), ...)
*/
*/

/*
  Source: /usr/include/stdio.h:356
  Original Name: printf/usr/include/stdio.h:356

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*/*
  fun printf(parg0: String, ...): I32 =>
    @printf(parg0.cstring(), ...)
*/
*/

/*
  Source: /usr/include/stdio.h:358
  Original Name: sprintf/usr/include/stdio.h:358

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*/*
  fun sprintf(parg0: String, parg1: String, ...): I32 =>
    @sprintf(parg0.cstring(), parg1.cstring(), ...)
*/
*/

/*
  Source: /usr/include/stdio.h:365
  Original Name: vfprintf/usr/include/stdio.h:365

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
/*
  fun vfprintf(parg0: NullablePointer[IOFILE] tag, parg1: String, parg2: NullablePointer[Valisttag] tag): I32 =>
    @vfprintf(parg0, parg1.cstring(), parg2)
*/


/*
  Source: /usr/include/stdio.h:371
  Original Name: vprintf/usr/include/stdio.h:371

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
/*
  fun vprintf(parg0: String, parg1: NullablePointer[Valisttag] tag): I32 =>
    @vprintf(parg0.cstring(), parg1)
*/


/*
  Source: /usr/include/stdio.h:373
  Original Name: vsprintf/usr/include/stdio.h:373

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
/*
  fun vsprintf(parg0: String, parg1: String, parg2: NullablePointer[Valisttag] tag): I32 =>
    @vsprintf(parg0.cstring(), parg1.cstring(), parg2)
*/


/*
  Source: /usr/include/stdio.h:378
  Original Name: snprintf/usr/include/stdio.h:378

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*/*
  fun snprintf(parg0: String, parg1: U64, parg2: String, ...): I32 =>
    @snprintf(parg0.cstring(), parg1, parg2.cstring(), ...)
*/
*/

/*
  Source: /usr/include/stdio.h:382
  Original Name: vsnprintf/usr/include/stdio.h:382

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
/*
  fun vsnprintf(parg0: String, parg1: U64, parg2: String, parg3: NullablePointer[Valisttag] tag): I32 =>
    @vsnprintf(parg0.cstring(), parg1, parg2.cstring(), parg3)
*/


/*
  Source: /usr/include/stdio.h:403
  Original Name: vdprintf/usr/include/stdio.h:403

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
/*
  fun vdprintf(fd: I32, fmt: String, arg: NullablePointer[Valisttag] tag): I32 =>
    @vdprintf(fd, fmt.cstring(), arg)
*/


/*
  Source: /usr/include/stdio.h:406
  Original Name: dprintf/usr/include/stdio.h:406

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*/*
  fun dprintf(fd: I32, fmt: String, ...): I32 =>
    @dprintf(fd, fmt.cstring(), ...)
*/
*/

/*
  Source: /usr/include/stdio.h:415
  Original Name: fscanf/usr/include/stdio.h:415

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*/*
  fun fscanf(parg0: NullablePointer[IOFILE] tag, parg1: String, ...): I32 =>
    @fscanf(parg0, parg1.cstring(), ...)
*/
*/

/*
  Source: /usr/include/stdio.h:421
  Original Name: scanf/usr/include/stdio.h:421

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*/*
  fun scanf(parg0: String, ...): I32 =>
    @scanf(parg0.cstring(), ...)
*/
*/

/*
  Source: /usr/include/stdio.h:423
  Original Name: sscanf/usr/include/stdio.h:423

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*/*
  fun sscanf(parg0: String, parg1: String, ...): I32 =>
    @sscanf(parg0.cstring(), parg1.cstring(), ...)
*/
*/

/*
  Source: /usr/include/stdio.h:459
  Original Name: vfscanf/usr/include/stdio.h:459

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
/*
  fun vfscanf(parg0: NullablePointer[IOFILE] tag, parg1: String, parg2: NullablePointer[Valisttag] tag): I32 =>
    @vfscanf(parg0, parg1.cstring(), parg2)
*/


/*
  Source: /usr/include/stdio.h:467
  Original Name: vscanf/usr/include/stdio.h:467

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
/*
  fun vscanf(parg0: String, parg1: NullablePointer[Valisttag] tag): I32 =>
    @vscanf(parg0.cstring(), parg1)
*/


/*
  Source: /usr/include/stdio.h:471
  Original Name: vsscanf/usr/include/stdio.h:471

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
/*
  fun vsscanf(parg0: String, parg1: String, parg2: NullablePointer[Valisttag] tag): I32 =>
    @vsscanf(parg0.cstring(), parg1.cstring(), parg2)
*/


/*
  Source: /usr/include/stdio.h:513
  Original Name: fgetc/usr/include/stdio.h:513

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fgetc(stream: NullablePointer[IOFILE] tag): I32 =>
    @fgetc(stream)
*/


/*
  Source: /usr/include/stdio.h:514
  Original Name: getc/usr/include/stdio.h:514

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun getc(stream: NullablePointer[IOFILE] tag): I32 =>
    @getc(stream)
*/


/*
  Source: /usr/include/stdio.h:520
  Original Name: getchar/usr/include/stdio.h:520

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
/*
  fun getchar(): I32 =>
    @getchar()
*/


/*
  Source: /usr/include/stdio.h:527
  Original Name: getc_unlocked/usr/include/stdio.h:527

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun getc_unlocked(stream: NullablePointer[IOFILE] tag): I32 =>
    @getc_unlocked(stream)
*/


/*
  Source: /usr/include/stdio.h:528
  Original Name: getchar_unlocked/usr/include/stdio.h:528

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
/*
  fun getchar_unlocked(): I32 =>
    @getchar_unlocked()
*/


/*
  Source: /usr/include/stdio.h:538
  Original Name: fgetc_unlocked/usr/include/stdio.h:538

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fgetc_unlocked(stream: NullablePointer[IOFILE] tag): I32 =>
    @fgetc_unlocked(stream)
*/


/*
  Source: /usr/include/stdio.h:549
  Original Name: fputc/usr/include/stdio.h:549

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fputc(c: I32, stream: NullablePointer[IOFILE] tag): I32 =>
    @fputc(c, stream)
*/


/*
  Source: /usr/include/stdio.h:550
  Original Name: putc/usr/include/stdio.h:550

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun putc(c: I32, stream: NullablePointer[IOFILE] tag): I32 =>
    @putc(c, stream)
*/


/*
  Source: /usr/include/stdio.h:556
  Original Name: putchar/usr/include/stdio.h:556

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun putchar(c: I32): I32 =>
    @putchar(c)
*/


/*
  Source: /usr/include/stdio.h:565
  Original Name: fputc_unlocked/usr/include/stdio.h:565

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fputc_unlocked(c: I32, stream: NullablePointer[IOFILE] tag): I32 =>
    @fputc_unlocked(c, stream)
*/


/*
  Source: /usr/include/stdio.h:573
  Original Name: putc_unlocked/usr/include/stdio.h:573

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun putc_unlocked(c: I32, stream: NullablePointer[IOFILE] tag): I32 =>
    @putc_unlocked(c, stream)
*/


/*
  Source: /usr/include/stdio.h:574
  Original Name: putchar_unlocked/usr/include/stdio.h:574

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
/*
  fun putchar_unlocked(c: I32): I32 =>
    @putchar_unlocked(c)
*/


/*
  Source: /usr/include/stdio.h:581
  Original Name: getw/usr/include/stdio.h:581

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun getw(stream: NullablePointer[IOFILE] tag): I32 =>
    @getw(stream)
*/


/*
  Source: /usr/include/stdio.h:584
  Original Name: putw/usr/include/stdio.h:584

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun putw(w: I32, stream: NullablePointer[IOFILE] tag): I32 =>
    @putw(w, stream)
*/


/*
  Source: /usr/include/stdio.h:592
  Original Name: fgets/usr/include/stdio.h:592

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fgets(s: String, n: I32, stream: NullablePointer[IOFILE] tag): String =>
    var pcstring: Pointer[U8] =  @fgets(s.cstring(), n, stream)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/stdio.h:632
  Original Name: __getdelim/usr/include/stdio.h:632

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun __getdelim(lineptr: Array[String], n: Pointer[U64] tag, delimiter: I32, stream: NullablePointer[IOFILE] tag): I64 =>
    @__getdelim(lineptr, n, delimiter, stream)
*/


/*
  Source: /usr/include/stdio.h:635
  Original Name: getdelim/usr/include/stdio.h:635

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun getdelim(lineptr: Array[String], n: Pointer[U64] tag, delimiter: I32, stream: NullablePointer[IOFILE] tag): I64 =>
    @getdelim(lineptr, n, delimiter, stream)
*/


/*
  Source: /usr/include/stdio.h:645
  Original Name: getline/usr/include/stdio.h:645

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun getline(lineptr: Array[String], n: Pointer[U64] tag, stream: NullablePointer[IOFILE] tag): I64 =>
    @getline(lineptr, n, stream)
*/


/*
  Source: /usr/include/stdio.h:655
  Original Name: fputs/usr/include/stdio.h:655

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fputs(s: String, stream: NullablePointer[IOFILE] tag): I32 =>
    @fputs(s.cstring(), stream)
*/


/*
  Source: /usr/include/stdio.h:661
  Original Name: puts/usr/include/stdio.h:661

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun puts(s: String): I32 =>
    @puts(s.cstring())
*/


/*
  Source: /usr/include/stdio.h:668
  Original Name: ungetc/usr/include/stdio.h:668

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun ungetc(c: I32, stream: NullablePointer[IOFILE] tag): I32 =>
    @ungetc(c, stream)
*/


/*
  Source: /usr/include/stdio.h:675
  Original Name: fread/usr/include/stdio.h:675

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fread(parg0: Pointer[None] tag, parg1: U64, parg2: U64, parg3: NullablePointer[IOFILE] tag): U64 =>
    @fread(parg0, parg1, parg2, parg3)
*/


/*
  Source: /usr/include/stdio.h:681
  Original Name: fwrite/usr/include/stdio.h:681

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fwrite(parg0: Pointer[None] tag, parg1: U64, parg2: U64, parg3: NullablePointer[IOFILE] tag): U64 =>
    @fwrite(parg0, parg1, parg2, parg3)
*/


/*
  Source: /usr/include/stdio.h:702
  Original Name: fread_unlocked/usr/include/stdio.h:702

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fread_unlocked(ptr: Pointer[None] tag, size: U64, n: U64, stream: NullablePointer[IOFILE] tag): U64 =>
    @fread_unlocked(ptr, size, n, stream)
*/


/*
  Source: /usr/include/stdio.h:704
  Original Name: fwrite_unlocked/usr/include/stdio.h:704

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fwrite_unlocked(ptr: Pointer[None] tag, size: U64, n: U64, stream: NullablePointer[IOFILE] tag): U64 =>
    @fwrite_unlocked(ptr, size, n, stream)
*/


/*
  Source: /usr/include/stdio.h:713
  Original Name: fseek/usr/include/stdio.h:713

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [FundamentalType(long int) size=64]
    [FundamentalType(int) size=32]
*/
/*
  fun fseek(stream: NullablePointer[IOFILE] tag, off: I64, whence: I32): I32 =>
    @fseek(stream, off, whence)
*/


/*
  Source: /usr/include/stdio.h:718
  Original Name: ftell/usr/include/stdio.h:718

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun ftell(stream: NullablePointer[IOFILE] tag): I64 =>
    @ftell(stream)
*/


/*
  Source: /usr/include/stdio.h:723
  Original Name: rewind/usr/include/stdio.h:723

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun rewind(stream: NullablePointer[IOFILE] tag): None =>
    @rewind(stream)
*/


/*
  Source: /usr/include/stdio.h:736
  Original Name: fseeko/usr/include/stdio.h:736

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [FundamentalType(long int) size=64]
    [FundamentalType(int) size=32]
*/
/*
  fun fseeko(stream: NullablePointer[IOFILE] tag, off: I64, whence: I32): I32 =>
    @fseeko(stream, off, whence)
*/


/*
  Source: /usr/include/stdio.h:741
  Original Name: ftello/usr/include/stdio.h:741

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun ftello(stream: NullablePointer[IOFILE] tag): I64 =>
    @ftello(stream)
*/


/*
  Source: /usr/include/stdio.h:760
  Original Name: fgetpos/usr/include/stdio.h:760

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[Struct size=128,fid: f43]
*/
/*
  fun fgetpos(stream: NullablePointer[IOFILE] tag, pos: NullablePointer[Gfpost] tag): I32 =>
    @fgetpos(stream, pos)
*/


/*
  Source: /usr/include/stdio.h:765
  Original Name: fsetpos/usr/include/stdio.h:765

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[Struct size=128,fid: f43]
*/
/*
  fun fsetpos(stream: NullablePointer[IOFILE] tag, pos: NullablePointer[Gfpost] tag): I32 =>
    @fsetpos(stream, pos)
*/


/*
  Source: /usr/include/stdio.h:786
  Original Name: clearerr/usr/include/stdio.h:786

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun clearerr(stream: NullablePointer[IOFILE] tag): None =>
    @clearerr(stream)
*/


/*
  Source: /usr/include/stdio.h:788
  Original Name: feof/usr/include/stdio.h:788

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun feof(stream: NullablePointer[IOFILE] tag): I32 =>
    @feof(stream)
*/


/*
  Source: /usr/include/stdio.h:790
  Original Name: ferror/usr/include/stdio.h:790

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun ferror(stream: NullablePointer[IOFILE] tag): I32 =>
    @ferror(stream)
*/


/*
  Source: /usr/include/stdio.h:794
  Original Name: clearerr_unlocked/usr/include/stdio.h:794

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun clearerr_unlocked(stream: NullablePointer[IOFILE] tag): None =>
    @clearerr_unlocked(stream)
*/


/*
  Source: /usr/include/stdio.h:795
  Original Name: feof_unlocked/usr/include/stdio.h:795

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun feof_unlocked(stream: NullablePointer[IOFILE] tag): I32 =>
    @feof_unlocked(stream)
*/


/*
  Source: /usr/include/stdio.h:796
  Original Name: ferror_unlocked/usr/include/stdio.h:796

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun ferror_unlocked(stream: NullablePointer[IOFILE] tag): I32 =>
    @ferror_unlocked(stream)
*/


/*
  Source: /usr/include/stdio.h:804
  Original Name: perror/usr/include/stdio.h:804

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun perror(s: String): None =>
    @perror(s.cstring())
*/


/*
  Source: /usr/include/stdio.h:809
  Original Name: fileno/usr/include/stdio.h:809

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fileno(stream: NullablePointer[IOFILE] tag): I32 =>
    @fileno(stream)
*/


/*
  Source: /usr/include/stdio.h:814
  Original Name: fileno_unlocked/usr/include/stdio.h:814

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun fileno_unlocked(stream: NullablePointer[IOFILE] tag): I32 =>
    @fileno_unlocked(stream)
*/


/*
  Source: /usr/include/stdio.h:823
  Original Name: pclose/usr/include/stdio.h:823

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun pclose(stream: NullablePointer[IOFILE] tag): I32 =>
    @pclose(stream)
*/


/*
  Source: /usr/include/stdio.h:829
  Original Name: popen/usr/include/stdio.h:829

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun popen(command: String, modes: String): NullablePointer[IOFILE] =>
    @popen(command.cstring(), modes.cstring())
*/


/*
  Source: /usr/include/stdio.h:837
  Original Name: ctermid/usr/include/stdio.h:837

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
/*
  fun ctermid(s: String): String =>
    var pcstring: Pointer[U8] =  @ctermid(s.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p
*/


/*
  Source: /usr/include/stdio.h:867
  Original Name: flockfile/usr/include/stdio.h:867

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun flockfile(stream: NullablePointer[IOFILE] tag): None =>
    @flockfile(stream)
*/


/*
  Source: /usr/include/stdio.h:871
  Original Name: ftrylockfile/usr/include/stdio.h:871

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun ftrylockfile(stream: NullablePointer[IOFILE] tag): I32 =>
    @ftrylockfile(stream)
*/


/*
  Source: /usr/include/stdio.h:874
  Original Name: funlockfile/usr/include/stdio.h:874

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun funlockfile(stream: NullablePointer[IOFILE] tag): None =>
    @funlockfile(stream)
*/


/*
  Source: /usr/include/stdio.h:885
  Original Name: __uflow/usr/include/stdio.h:885

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
/*
  fun __uflow(parg0: NullablePointer[IOFILE] tag): I32 =>
    @__uflow(parg0)
*/


/*
  Source: /usr/include/stdio.h:886
  Original Name: __overflow/usr/include/stdio.h:886

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [FundamentalType(int) size=32]
*/
/*
  fun __overflow(parg0: NullablePointer[IOFILE] tag, parg1: I32): I32 =>
    @__overflow(parg0, parg1)
*/


/*
  Source: /usr/include/pcap/pcap.h:386
  Original Name: pcap_init/usr/include/pcap/pcap.h:386

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_init(parg0: U32, parg1: String): I32 =>
    @pcap_init(parg0, parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:394
  Original Name: pcap_lookupdev/usr/include/pcap/pcap.h:394

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_lookupdev(parg0: String): String =>
    var pcstring: Pointer[U8] =  @pcap_lookupdev(parg0.cstring())
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:398
  Original Name: pcap_lookupnet/usr/include/pcap/pcap.h:398

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_lookupnet(parg0: String, parg1: Pointer[U32] tag, parg2: Pointer[U32] tag, parg3: String): I32 =>
    @pcap_lookupnet(parg0.cstring(), parg1, parg2, parg3.cstring())


/*
  Source: /usr/include/pcap/pcap.h:401
  Original Name: pcap_create/usr/include/pcap/pcap.h:401

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_create(parg0: String, parg1: String): NullablePointer[Pcap] =>
    @pcap_create(parg0.cstring(), parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:404
  Original Name: pcap_set_snaplen/usr/include/pcap/pcap.h:404

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_snaplen(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_snaplen(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:407
  Original Name: pcap_set_promisc/usr/include/pcap/pcap.h:407

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_promisc(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_promisc(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:410
  Original Name: pcap_can_set_rfmon/usr/include/pcap/pcap.h:410

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_can_set_rfmon(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_can_set_rfmon(parg0)


/*
  Source: /usr/include/pcap/pcap.h:413
  Original Name: pcap_set_rfmon/usr/include/pcap/pcap.h:413

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_rfmon(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_rfmon(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:416
  Original Name: pcap_set_timeout/usr/include/pcap/pcap.h:416

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_timeout(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_timeout(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:419
  Original Name: pcap_set_tstamp_type/usr/include/pcap/pcap.h:419

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_tstamp_type(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_tstamp_type(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:422
  Original Name: pcap_set_immediate_mode/usr/include/pcap/pcap.h:422

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_immediate_mode(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_immediate_mode(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:425
  Original Name: pcap_set_buffer_size/usr/include/pcap/pcap.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_buffer_size(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_buffer_size(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:428
  Original Name: pcap_set_tstamp_precision/usr/include/pcap/pcap.h:428

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_tstamp_precision(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_tstamp_precision(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:431
  Original Name: pcap_get_tstamp_precision/usr/include/pcap/pcap.h:431

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_get_tstamp_precision(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_get_tstamp_precision(parg0)


/*
  Source: /usr/include/pcap/pcap.h:434
  Original Name: pcap_activate/usr/include/pcap/pcap.h:434

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_activate(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_activate(parg0)


/*
  Source: /usr/include/pcap/pcap.h:437
  Original Name: pcap_list_tstamp_types/usr/include/pcap/pcap.h:437

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun pcap_list_tstamp_types(parg0: NullablePointer[Pcap] tag, parg1: NullablePointer[Pointer[I32]] tag): I32 =>
    @pcap_list_tstamp_types(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:440
  Original Name: pcap_free_tstamp_types/usr/include/pcap/pcap.h:440

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun pcap_free_tstamp_types(parg0: Pointer[I32] tag): None =>
    @pcap_free_tstamp_types(parg0)


/*
  Source: /usr/include/pcap/pcap.h:443
  Original Name: pcap_tstamp_type_name_to_val/usr/include/pcap/pcap.h:443

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_tstamp_type_name_to_val(parg0: String): I32 =>
    @pcap_tstamp_type_name_to_val(parg0.cstring())


/*
  Source: /usr/include/pcap/pcap.h:446
  Original Name: pcap_tstamp_type_val_to_name/usr/include/pcap/pcap.h:446

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun pcap_tstamp_type_val_to_name(parg0: I32): String =>
    var pcstring: Pointer[U8] =  @pcap_tstamp_type_val_to_name(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:449
  Original Name: pcap_tstamp_type_val_to_description/usr/include/pcap/pcap.h:449

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun pcap_tstamp_type_val_to_description(parg0: I32): String =>
    var pcstring: Pointer[U8] =  @pcap_tstamp_type_val_to_description(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:453
  Original Name: pcap_set_protocol_linux/usr/include/pcap/pcap.h:453

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_protocol_linux(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_protocol_linux(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:515
  Original Name: pcap_open_live/usr/include/pcap/pcap.h:515

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_open_live(parg0: String, parg1: I32, parg2: I32, parg3: I32, parg4: String): NullablePointer[Pcap] =>
    @pcap_open_live(parg0.cstring(), parg1, parg2, parg3, parg4.cstring())


/*
  Source: /usr/include/pcap/pcap.h:518
  Original Name: pcap_open_dead/usr/include/pcap/pcap.h:518

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
  fun pcap_open_dead(parg0: I32, parg1: I32): NullablePointer[Pcap] =>
    @pcap_open_dead(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:521
  Original Name: pcap_open_dead_with_tstamp_precision/usr/include/pcap/pcap.h:521

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(unsigned int) size=32]
*/
  fun pcap_open_dead_with_tstamp_precision(parg0: I32, parg1: I32, parg2: U32): NullablePointer[Pcap] =>
    @pcap_open_dead_with_tstamp_precision(parg0, parg1, parg2)


/*
  Source: /usr/include/pcap/pcap.h:524
  Original Name: pcap_open_offline_with_tstamp_precision/usr/include/pcap/pcap.h:524

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_open_offline_with_tstamp_precision(parg0: String, parg1: U32, parg2: String): NullablePointer[Pcap] =>
    @pcap_open_offline_with_tstamp_precision(parg0.cstring(), parg1, parg2.cstring())


/*
  Source: /usr/include/pcap/pcap.h:527
  Original Name: pcap_open_offline/usr/include/pcap/pcap.h:527

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_open_offline(parg0: String, parg1: String): NullablePointer[Pcap] =>
    @pcap_open_offline(parg0.cstring(), parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:555
  Original Name: pcap_fopen_offline_with_tstamp_precision/usr/include/pcap/pcap.h:555

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_fopen_offline_with_tstamp_precision(parg0: NullablePointer[IOFILE] tag, parg1: U32, parg2: String): NullablePointer[Pcap] =>
    @pcap_fopen_offline_with_tstamp_precision(parg0, parg1, parg2.cstring())


/*
  Source: /usr/include/pcap/pcap.h:558
  Original Name: pcap_fopen_offline/usr/include/pcap/pcap.h:558

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_fopen_offline(parg0: NullablePointer[IOFILE] tag, parg1: String): NullablePointer[Pcap] =>
    @pcap_fopen_offline(parg0, parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:562
  Original Name: pcap_close/usr/include/pcap/pcap.h:562

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_close(parg0: NullablePointer[Pcap] tag): None =>
    @pcap_close(parg0)


/*
  Source: /usr/include/pcap/pcap.h:565
  Original Name: pcap_loop/usr/include/pcap/pcap.h:565

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun pcap_loop(parg0: NullablePointer[Pcap] tag, parg1: I32, parg2: Pointer[None] tag, parg3: String): I32 =>
    @pcap_loop(parg0, parg1, parg2, parg3.cstring())


/*
  Source: /usr/include/pcap/pcap.h:568
  Original Name: pcap_dispatch/usr/include/pcap/pcap.h:568

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FunctionType]  WRITE MANUALLY
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun pcap_dispatch(parg0: NullablePointer[Pcap] tag, parg1: I32, parg2: Pointer[None] tag, parg3: String): I32 =>
    @pcap_dispatch(parg0, parg1, parg2, parg3.cstring())


/*
  Source: /usr/include/pcap/pcap.h:571
  Original Name: pcap_next/usr/include/pcap/pcap.h:571

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=192,fid: f50]
*/
  fun pcap_next(parg0: NullablePointer[Pcap] tag, parg1: NullablePointer[Pcappkthdr] tag): String =>
    var pcstring: Pointer[U8] =  @pcap_next(parg0, parg1)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:574
  Original Name: pcap_next_ex/usr/include/pcap/pcap.h:574

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
/*
  fun pcap_next_ex(parg0: NullablePointer[Pcap] tag, parg1: Pointer[NullablePointer[Pcappkthdr]] tag, parg2: Array[String]): I32 =>
    @pcap_next_ex(parg0, parg1, parg2)
*/


/*
  Source: /usr/include/pcap/pcap.h:577
  Original Name: pcap_breakloop/usr/include/pcap/pcap.h:577

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_breakloop(parg0: NullablePointer[Pcap] tag): None =>
    @pcap_breakloop(parg0)


/*
  Source: /usr/include/pcap/pcap.h:580
  Original Name: pcap_stats/usr/include/pcap/pcap.h:580

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=96,fid: f50]
*/
  fun pcap_stats(parg0: NullablePointer[Pcap] tag, parg1: NullablePointer[Pcapstat] tag): I32 =>
    @pcap_stats(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:583
  Original Name: pcap_setfilter/usr/include/pcap/pcap.h:583

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=128,fid: f40]
*/
  fun pcap_setfilter(parg0: NullablePointer[Pcap] tag, parg1: NullablePointer[Bpfprogram] tag): I32 =>
    @pcap_setfilter(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:586
  Original Name: pcap_setdirection/usr/include/pcap/pcap.h:586

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [Enumeration size=32,fid: f50]
*/
  fun pcap_setdirection(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_setdirection(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:589
  Original Name: pcap_getnonblock/usr/include/pcap/pcap.h:589

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_getnonblock(parg0: NullablePointer[Pcap] tag, parg1: String): I32 =>
    @pcap_getnonblock(parg0, parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:592
  Original Name: pcap_setnonblock/usr/include/pcap/pcap.h:592

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_setnonblock(parg0: NullablePointer[Pcap] tag, parg1: I32, parg2: String): I32 =>
    @pcap_setnonblock(parg0, parg1, parg2.cstring())


/*
  Source: /usr/include/pcap/pcap.h:595
  Original Name: pcap_inject/usr/include/pcap/pcap.h:595

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
*/
  fun pcap_inject(parg0: NullablePointer[Pcap] tag, parg1: Pointer[None] tag, parg2: U64): I32 =>
    @pcap_inject(parg0, parg1, parg2)


/*
  Source: /usr/include/pcap/pcap.h:598
  Original Name: pcap_sendpacket/usr/include/pcap/pcap.h:598

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
  fun pcap_sendpacket(parg0: NullablePointer[Pcap] tag, parg1: String, parg2: I32): I32 =>
    @pcap_sendpacket(parg0, parg1.cstring(), parg2)


/*
  Source: /usr/include/pcap/pcap.h:601
  Original Name: pcap_statustostr/usr/include/pcap/pcap.h:601

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun pcap_statustostr(parg0: I32): String =>
    var pcstring: Pointer[U8] =  @pcap_statustostr(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:604
  Original Name: pcap_strerror/usr/include/pcap/pcap.h:604

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun pcap_strerror(parg0: I32): String =>
    var pcstring: Pointer[U8] =  @pcap_strerror(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:607
  Original Name: pcap_geterr/usr/include/pcap/pcap.h:607

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_geterr(parg0: NullablePointer[Pcap] tag): String =>
    var pcstring: Pointer[U8] =  @pcap_geterr(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:610
  Original Name: pcap_perror/usr/include/pcap/pcap.h:610

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_perror(parg0: NullablePointer[Pcap] tag, parg1: String): None =>
    @pcap_perror(parg0, parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:613
  Original Name: pcap_compile/usr/include/pcap/pcap.h:613

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=128,fid: f40]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(unsigned int) size=32]
*/
  fun pcap_compile(parg0: NullablePointer[Pcap] tag, parg1: NullablePointer[Bpfprogram] tag, parg2: String, parg3: I32, parg4: U32): I32 =>
    @pcap_compile(parg0, parg1, parg2.cstring(), parg3, parg4)


/*
  Source: /usr/include/pcap/pcap.h:617
  Original Name: pcap_compile_nopcap/usr/include/pcap/pcap.h:617

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f40]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(unsigned int) size=32]
*/
  fun pcap_compile_nopcap(parg0: I32, parg1: I32, parg2: NullablePointer[Bpfprogram] tag, parg3: String, parg4: I32, parg5: U32): I32 =>
    @pcap_compile_nopcap(parg0, parg1, parg2, parg3.cstring(), parg4, parg5)


/*
  Source: /usr/include/pcap/pcap.h:622
  Original Name: pcap_freecode/usr/include/pcap/pcap.h:622

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f40]
*/
  fun pcap_freecode(parg0: NullablePointer[Bpfprogram] tag): None =>
    @pcap_freecode(parg0)


/*
  Source: /usr/include/pcap/pcap.h:625
  Original Name: pcap_offline_filter/usr/include/pcap/pcap.h:625

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f40]
    [PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun pcap_offline_filter(parg0: NullablePointer[Bpfprogram] tag, parg1: NullablePointer[Pcappkthdr] tag, parg2: String): I32 =>
    @pcap_offline_filter(parg0, parg1, parg2.cstring())


/*
  Source: /usr/include/pcap/pcap.h:629
  Original Name: pcap_datalink/usr/include/pcap/pcap.h:629

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_datalink(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_datalink(parg0)


/*
  Source: /usr/include/pcap/pcap.h:632
  Original Name: pcap_datalink_ext/usr/include/pcap/pcap.h:632

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_datalink_ext(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_datalink_ext(parg0)


/*
  Source: /usr/include/pcap/pcap.h:635
  Original Name: pcap_list_datalinks/usr/include/pcap/pcap.h:635

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun pcap_list_datalinks(parg0: NullablePointer[Pcap] tag, parg1: NullablePointer[Pointer[I32]] tag): I32 =>
    @pcap_list_datalinks(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:638
  Original Name: pcap_set_datalink/usr/include/pcap/pcap.h:638

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
  fun pcap_set_datalink(parg0: NullablePointer[Pcap] tag, parg1: I32): I32 =>
    @pcap_set_datalink(parg0, parg1)


/*
  Source: /usr/include/pcap/pcap.h:641
  Original Name: pcap_free_datalinks/usr/include/pcap/pcap.h:641

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
  fun pcap_free_datalinks(parg0: Pointer[I32] tag): None =>
    @pcap_free_datalinks(parg0)


/*
  Source: /usr/include/pcap/pcap.h:644
  Original Name: pcap_datalink_name_to_val/usr/include/pcap/pcap.h:644

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_datalink_name_to_val(parg0: String): I32 =>
    @pcap_datalink_name_to_val(parg0.cstring())


/*
  Source: /usr/include/pcap/pcap.h:647
  Original Name: pcap_datalink_val_to_name/usr/include/pcap/pcap.h:647

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun pcap_datalink_val_to_name(parg0: I32): String =>
    var pcstring: Pointer[U8] =  @pcap_datalink_val_to_name(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:650
  Original Name: pcap_datalink_val_to_description/usr/include/pcap/pcap.h:650

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun pcap_datalink_val_to_description(parg0: I32): String =>
    var pcstring: Pointer[U8] =  @pcap_datalink_val_to_description(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:653
  Original Name: pcap_datalink_val_to_description_or_dlt/usr/include/pcap/pcap.h:653

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
  fun pcap_datalink_val_to_description_or_dlt(parg0: I32): String =>
    var pcstring: Pointer[U8] =  @pcap_datalink_val_to_description_or_dlt(parg0)
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:656
  Original Name: pcap_snapshot/usr/include/pcap/pcap.h:656

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_snapshot(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_snapshot(parg0)


/*
  Source: /usr/include/pcap/pcap.h:659
  Original Name: pcap_is_swapped/usr/include/pcap/pcap.h:659

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_is_swapped(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_is_swapped(parg0)


/*
  Source: /usr/include/pcap/pcap.h:662
  Original Name: pcap_major_version/usr/include/pcap/pcap.h:662

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_major_version(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_major_version(parg0)


/*
  Source: /usr/include/pcap/pcap.h:665
  Original Name: pcap_minor_version/usr/include/pcap/pcap.h:665

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_minor_version(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_minor_version(parg0)


/*
  Source: /usr/include/pcap/pcap.h:668
  Original Name: pcap_bufsize/usr/include/pcap/pcap.h:668

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_bufsize(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_bufsize(parg0)


/*
  Source: /usr/include/pcap/pcap.h:672
  Original Name: pcap_file/usr/include/pcap/pcap.h:672

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_file(parg0: NullablePointer[Pcap] tag): NullablePointer[IOFILE] =>
    @pcap_file(parg0)


/*
  Source: /usr/include/pcap/pcap.h:687
  Original Name: pcap_fileno/usr/include/pcap/pcap.h:687

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_fileno(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_fileno(parg0)


/*
  Source: /usr/include/pcap/pcap.h:695
  Original Name: pcap_dump_open/usr/include/pcap/pcap.h:695

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_dump_open(parg0: NullablePointer[Pcap] tag, parg1: String): NullablePointer[Pcapdumper] =>
    @pcap_dump_open(parg0, parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:720
  Original Name: pcap_dump_fopen/usr/include/pcap/pcap.h:720

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
  fun pcap_dump_fopen(parg0: NullablePointer[Pcap] tag, fp: NullablePointer[IOFILE] tag): NullablePointer[Pcapdumper] =>
    @pcap_dump_fopen(parg0, fp)


/*
  Source: /usr/include/pcap/pcap.h:724
  Original Name: pcap_dump_open_append/usr/include/pcap/pcap.h:724

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_dump_open_append(parg0: NullablePointer[Pcap] tag, parg1: String): NullablePointer[Pcapdumper] =>
    @pcap_dump_open_append(parg0, parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:727
  Original Name: pcap_dump_file/usr/include/pcap/pcap.h:727

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_dump_file(parg0: NullablePointer[Pcapdumper] tag): NullablePointer[IOFILE] =>
    @pcap_dump_file(parg0)


/*
  Source: /usr/include/pcap/pcap.h:730
  Original Name: pcap_dump_ftell/usr/include/pcap/pcap.h:730

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_dump_ftell(parg0: NullablePointer[Pcapdumper] tag): I64 =>
    @pcap_dump_ftell(parg0)


/*
  Source: /usr/include/pcap/pcap.h:733
  Original Name: pcap_dump_ftell64/usr/include/pcap/pcap.h:733

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_dump_ftell64(parg0: NullablePointer[Pcapdumper] tag): I64 =>
    @pcap_dump_ftell64(parg0)


/*
  Source: /usr/include/pcap/pcap.h:736
  Original Name: pcap_dump_flush/usr/include/pcap/pcap.h:736

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_dump_flush(parg0: NullablePointer[Pcapdumper] tag): I32 =>
    @pcap_dump_flush(parg0)


/*
  Source: /usr/include/pcap/pcap.h:739
  Original Name: pcap_dump_close/usr/include/pcap/pcap.h:739

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_dump_close(parg0: NullablePointer[Pcapdumper] tag): None =>
    @pcap_dump_close(parg0)


/*
  Source: /usr/include/pcap/pcap.h:742
  Original Name: pcap_dump/usr/include/pcap/pcap.h:742

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
  fun pcap_dump(parg0: String, parg1: NullablePointer[Pcappkthdr] tag, parg2: String): None =>
    @pcap_dump(parg0.cstring(), parg1, parg2.cstring())


/*
  Source: /usr/include/pcap/pcap.h:745
  Original Name: pcap_findalldevs/usr/include/pcap/pcap.h:745

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[Struct size=320,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_findalldevs(parg0: Pointer[NullablePointer[Pcapif]] tag, parg1: String): I32 =>
    @pcap_findalldevs(parg0, parg1.cstring())


/*
  Source: /usr/include/pcap/pcap.h:748
  Original Name: pcap_freealldevs/usr/include/pcap/pcap.h:748

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=320,fid: f50]
*/
  fun pcap_freealldevs(parg0: NullablePointer[Pcapif] tag): None =>
    @pcap_freealldevs(parg0)


/*
  Source: /usr/include/pcap/pcap.h:766
  Original Name: pcap_lib_version/usr/include/pcap/pcap.h:766

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
*/
  fun pcap_lib_version(): String =>
    var pcstring: Pointer[U8] =  @pcap_lib_version()
    let p: String iso = String.from_cstring(pcstring).clone()
    consume p


/*
  Source: /usr/include/pcap/pcap.h:848
  Original Name: pcap_get_selectable_fd/usr/include/pcap/pcap.h:848

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_get_selectable_fd(parg0: NullablePointer[Pcap] tag): I32 =>
    @pcap_get_selectable_fd(parg0)


/*
  Source: /usr/include/pcap/pcap.h:851
  Original Name: pcap_get_required_select_timeout/usr/include/pcap/pcap.h:851

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_get_required_select_timeout(parg0: NullablePointer[Pcap] tag): NullablePointer[Timeval] =>
    @pcap_get_required_select_timeout(parg0)


/*
  Source: /usr/include/pcap/pcap.h:1084
  Original Name: pcap_open/usr/include/pcap/pcap.h:1084

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_open(source: String, snaplen: I32, flags: I32, readtimeout: I32, auth: NullablePointer[Pcaprmtauth] tag, errbuf: String): NullablePointer[Pcap] =>
    @pcap_open(source.cstring(), snaplen, flags, readtimeout, auth, errbuf.cstring())


/*
  Source: /usr/include/pcap/pcap.h:1088
  Original Name: pcap_createsrcstr/usr/include/pcap/pcap.h:1088

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_createsrcstr(source: String, ptype: I32, host: String, port: String, name: String, errbuf: String): I32 =>
    @pcap_createsrcstr(source.cstring(), ptype, host.cstring(), port.cstring(), name.cstring(), errbuf.cstring())


/*
  Source: /usr/include/pcap/pcap.h:1092
  Original Name: pcap_parsesrcstr/usr/include/pcap/pcap.h:1092

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_parsesrcstr(source: String, ptype: Pointer[I32] tag, host: String, port: String, name: String, errbuf: String): I32 =>
    @pcap_parsesrcstr(source.cstring(), ptype, host.cstring(), port.cstring(), name.cstring(), errbuf.cstring())


/*
  Source: /usr/include/pcap/pcap.h:1115
  Original Name: pcap_findalldevs_ex/usr/include/pcap/pcap.h:1115

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[Struct size=320,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_findalldevs_ex(source: String, auth: NullablePointer[Pcaprmtauth] tag, alldevs: Pointer[NullablePointer[Pcapif]] tag, errbuf: String): I32 =>
    @pcap_findalldevs_ex(source.cstring(), auth, alldevs, errbuf.cstring())


/*
  Source: /usr/include/pcap/pcap.h:1186
  Original Name: pcap_setsampling/usr/include/pcap/pcap.h:1186

  Return Value: [PointerType size=64]->[Struct size=64,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
  fun pcap_setsampling(p: NullablePointer[Pcap] tag): NullablePointer[Pcapsamp] =>
    @pcap_setsampling(p)


/*
  Source: /usr/include/pcap/pcap.h:1196
  Original Name: pcap_remoteact_accept/usr/include/pcap/pcap.h:1196

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_remoteact_accept(address: String, port: String, hostlist: String, connectinghost: String, auth: NullablePointer[Pcaprmtauth] tag, errbuf: String): I32 =>
    @pcap_remoteact_accept(address.cstring(), port.cstring(), hostlist.cstring(), connectinghost.cstring(), auth, errbuf.cstring())


/*
  Source: /usr/include/pcap/pcap.h:1201
  Original Name: pcap_remoteact_accept_ex/usr/include/pcap/pcap.h:1201

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f50]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_remoteact_accept_ex(address: String, port: String, hostlist: String, connectinghost: String, auth: NullablePointer[Pcaprmtauth] tag, usesssl: I32, errbuf: String): I32 =>
    @pcap_remoteact_accept_ex(address.cstring(), port.cstring(), hostlist.cstring(), connectinghost.cstring(), auth, usesssl, errbuf.cstring())


/*
  Source: /usr/include/pcap/pcap.h:1206
  Original Name: pcap_remoteact_list/usr/include/pcap/pcap.h:1206

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_remoteact_list(hostlist: String, sep: U8, size: I32, errbuf: String): I32 =>
    @pcap_remoteact_list(hostlist.cstring(), sep, size, errbuf.cstring())


/*
  Source: /usr/include/pcap/pcap.h:1210
  Original Name: pcap_remoteact_close/usr/include/pcap/pcap.h:1210

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
  fun pcap_remoteact_close(host: String, errbuf: String): I32 =>
    @pcap_remoteact_close(host.cstring(), errbuf.cstring())


/*
  Source: /usr/include/pcap/pcap.h:1213
  Original Name: pcap_remoteact_cleanup/usr/include/pcap/pcap.h:1213

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
  fun pcap_remoteact_cleanup(): None =>
    @pcap_remoteact_cleanup()
