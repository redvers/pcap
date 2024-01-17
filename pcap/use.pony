

/*
  Source: /usr/include/inttypes.h:290
  Original Name: imaxabs/usr/include/inttypes.h:290

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(long int) size=64]
*/
// use @imaxabs[I64](n: I64)



/*
  Source: /usr/include/inttypes.h:293
  Original Name: imaxdiv/usr/include/inttypes.h:293

  Return Value: [Struct size=128,fid: f5]

  Arguments:
    [FundamentalType(long int) size=64]
    [FundamentalType(long int) size=64]
*/
// use @imaxdiv[](numer: I64, denom: I64)



/*
  Source: /usr/include/inttypes.h:297
  Original Name: strtoimax/usr/include/inttypes.h:297

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
// use @strtoimax[I64](nptr: Pointer[U8] tag, endptr: Pointer[Pointer[U8]] tag, base: I32)



/*
  Source: /usr/include/inttypes.h:301
  Original Name: strtoumax/usr/include/inttypes.h:301

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
// use @strtoumax[U64](nptr: Pointer[U8] tag, endptr: Pointer[Pointer[U8]] tag, base: I32)



/*
  Source: /usr/include/inttypes.h:305
  Original Name: wcstoimax/usr/include/inttypes.h:305

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
// use @wcstoimax[I64](nptr: Pointer[I32] tag, endptr: NullablePointer[Pointer[I32]] tag, base: I32)



/*
  Source: /usr/include/inttypes.h:310
  Original Name: wcstoumax/usr/include/inttypes.h:310

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
// use @wcstoumax[U64](nptr: Pointer[I32] tag, endptr: NullablePointer[Pointer[I32]] tag, base: I32)



/*
  Source: /usr/include/x86_64-linux-gnu/bits/byteswap.h:34
  Original Name: __bswap_16/usr/include/x86_64-linux-gnu/bits/byteswap.h:34

  Return Value: [FundamentalType(short unsigned int) size=16]

  Arguments:
    [FundamentalType(short unsigned int) size=16]
*/
// use @__bswap_16[U16](bsx: U16)



/*
  Source: /usr/include/x86_64-linux-gnu/bits/byteswap.h:49
  Original Name: __bswap_32/usr/include/x86_64-linux-gnu/bits/byteswap.h:49

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
// use @__bswap_32[U32](bsx: U32)



/*
  Source: /usr/include/x86_64-linux-gnu/bits/byteswap.h:70
  Original Name: __bswap_64/usr/include/x86_64-linux-gnu/bits/byteswap.h:70

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
*/
// use @__bswap_64[U64](bsx: U64)



/*
  Source: /usr/include/x86_64-linux-gnu/bits/uintn-identity.h:33
  Original Name: __uint16_identity/usr/include/x86_64-linux-gnu/bits/uintn-identity.h:33

  Return Value: [FundamentalType(short unsigned int) size=16]

  Arguments:
    [FundamentalType(short unsigned int) size=16]
*/
// use @__uint16_identity[U16](x: U16)



/*
  Source: /usr/include/x86_64-linux-gnu/bits/uintn-identity.h:39
  Original Name: __uint32_identity/usr/include/x86_64-linux-gnu/bits/uintn-identity.h:39

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
// use @__uint32_identity[U32](x: U32)



/*
  Source: /usr/include/x86_64-linux-gnu/bits/uintn-identity.h:45
  Original Name: __uint64_identity/usr/include/x86_64-linux-gnu/bits/uintn-identity.h:45

  Return Value: [FundamentalType(long unsigned int) size=64]

  Arguments:
    [FundamentalType(long unsigned int) size=64]
*/
// use @__uint64_identity[U64](x: U64)



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
// use @select[I32](nfds: I32, readfds: NullablePointer[] tag, writefds: NullablePointer[] tag, exceptfds: NullablePointer[] tag, timeout: NullablePointer[Timeval] tag)



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
// use @pselect[I32](nfds: I32, readfds: NullablePointer[] tag, writefds: NullablePointer[] tag, exceptfds: NullablePointer[] tag, timeout: NullablePointer[Timespec] tag, sigmask: NullablePointer[] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:67
  Original Name: gettimeofday/usr/include/x86_64-linux-gnu/sys/time.h:67

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
// use @gettimeofday[I32](tv: NullablePointer[Timeval] tag, tz: Pointer[None] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:86
  Original Name: settimeofday/usr/include/x86_64-linux-gnu/sys/time.h:86

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
    [PointerType size=64]->[Struct size=64,fid: f24]
*/
// use @settimeofday[I32](tv: NullablePointer[Timeval] tag, tz: NullablePointer[Timezone] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:94
  Original Name: adjtime/usr/include/x86_64-linux-gnu/sys/time.h:94

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f16]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
// use @adjtime[I32](delta: NullablePointer[Timeval] tag, olddelta: NullablePointer[Timeval] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:149
  Original Name: getitimer/usr/include/x86_64-linux-gnu/sys/time.h:149

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=256,fid: f24]
*/
// use @getitimer[I32](which: I32, value: NullablePointer[Itimerval] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:155
  Original Name: setitimer/usr/include/x86_64-linux-gnu/sys/time.h:155

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=256,fid: f24]
    [PointerType size=64]->[Struct size=256,fid: f24]
*/
// use @setitimer[I32](which: I32, new: NullablePointer[Itimerval] tag, old: NullablePointer[Itimerval] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:162
  Original Name: utimes/usr/include/x86_64-linux-gnu/sys/time.h:162

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
// use @utimes[I32](file: Pointer[U8] tag, tvp: NullablePointer[Timeval] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:189
  Original Name: lutimes/usr/include/x86_64-linux-gnu/sys/time.h:189

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
// use @lutimes[I32](file: Pointer[U8] tag, tvp: NullablePointer[Timeval] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/time.h:193
  Original Name: futimes/usr/include/x86_64-linux-gnu/sys/time.h:193

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f16]
*/
// use @futimes[I32](fd: I32, tvp: NullablePointer[Timeval] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/bits/socket.h:307
  Original Name: __cmsg_nxthdr/usr/include/x86_64-linux-gnu/bits/socket.h:307

  Return Value: [PointerType size=64]->[Struct size=128,fid: f26]

  Arguments:
    [PointerType size=64]->[Struct size=448,fid: f26]
    [PointerType size=64]->[Struct size=128,fid: f26]
*/
// use @__cmsg_nxthdr[NullablePointer[Cmsghdr]](mhdr: NullablePointer[Msghdr] tag, cmsg: NullablePointer[Cmsghdr] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:102
  Original Name: socket/usr/include/x86_64-linux-gnu/sys/socket.h:102

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
// use @socket[I32](domain: I32, ptype: I32, protocol: I32)



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
// use @socketpair[I32](domain: I32, ptype: I32, protocol: I32, fds: Pointer[I32] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:112
  Original Name: bind/usr/include/x86_64-linux-gnu/sys/socket.h:112

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [FundamentalType(unsigned int) size=32]
*/
// use @bind[I32](fd: I32, addr: NullablePointer[Sockaddr] tag, len: U32)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:116
  Original Name: getsockname/usr/include/x86_64-linux-gnu/sys/socket.h:116

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
// use @getsockname[I32](fd: I32, addr: NullablePointer[Sockaddr] tag, len: Pointer[U32] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:126
  Original Name: connect/usr/include/x86_64-linux-gnu/sys/socket.h:126

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [FundamentalType(unsigned int) size=32]
*/
// use @connect[I32](fd: I32, addr: NullablePointer[Sockaddr] tag, len: U32)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:130
  Original Name: getpeername/usr/include/x86_64-linux-gnu/sys/socket.h:130

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
// use @getpeername[I32](fd: I32, addr: NullablePointer[Sockaddr] tag, len: Pointer[U32] tag)



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
// use @send[I64](fd: I32, buf: Pointer[None] tag, n: U64, flags: I32)



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
// use @recv[I64](fd: I32, buf: Pointer[None] tag, n: U64, flags: I32)



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
// use @sendto[I64](fd: I32, buf: Pointer[None] tag, n: U64, flags: I32, addr: NullablePointer[Sockaddr] tag, addrlen: U32)



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
// use @recvfrom[I64](fd: I32, buf: Pointer[None] tag, n: U64, flags: I32, addr: NullablePointer[Sockaddr] tag, addrlen: Pointer[U32] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:174
  Original Name: sendmsg/usr/include/x86_64-linux-gnu/sys/socket.h:174

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=448,fid: f26]
    [FundamentalType(int) size=32]
*/
// use @sendmsg[I64](fd: I32, message: NullablePointer[Msghdr] tag, flags: I32)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:216
  Original Name: recvmsg/usr/include/x86_64-linux-gnu/sys/socket.h:216

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=448,fid: f26]
    [FundamentalType(int) size=32]
*/
// use @recvmsg[I64](fd: I32, message: NullablePointer[Msghdr] tag, flags: I32)



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
// use @getsockopt[I32](fd: I32, level: I32, optname: I32, optval: Pointer[None] tag, optlen: Pointer[U32] tag)



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
// use @setsockopt[I32](fd: I32, level: I32, optname: I32, optval: Pointer[None] tag, optlen: U32)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:296
  Original Name: listen/usr/include/x86_64-linux-gnu/sys/socket.h:296

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
// use @listen[I32](fd: I32, n: I32)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:306
  Original Name: accept/usr/include/x86_64-linux-gnu/sys/socket.h:306

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f26]
    [PointerType size=64]->[FundamentalType(unsigned int) size=32]
*/
// use @accept[I32](fd: I32, addr: NullablePointer[Sockaddr] tag, addrlen: Pointer[U32] tag)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:324
  Original Name: shutdown/usr/include/x86_64-linux-gnu/sys/socket.h:324

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
// use @shutdown[I32](fd: I32, how: I32)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:329
  Original Name: sockatmark/usr/include/x86_64-linux-gnu/sys/socket.h:329

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @sockatmark[I32](fd: I32)



/*
  Source: /usr/include/x86_64-linux-gnu/sys/socket.h:337
  Original Name: isfdtype/usr/include/x86_64-linux-gnu/sys/socket.h:337

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
// use @isfdtype[I32](fd: I32, fdtype: I32)



/*
  Source: /usr/include/netinet/in.h:382
  Original Name: ntohl/usr/include/netinet/in.h:382

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
// use @ntohl[U32](netlong: U32)



/*
  Source: /usr/include/netinet/in.h:383
  Original Name: ntohs/usr/include/netinet/in.h:383

  Return Value: [FundamentalType(short unsigned int) size=16]

  Arguments:
    [FundamentalType(short unsigned int) size=16]
*/
// use @ntohs[U16](netshort: U16)



/*
  Source: /usr/include/netinet/in.h:385
  Original Name: htonl/usr/include/netinet/in.h:385

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
*/
// use @htonl[U32](hostlong: U32)



/*
  Source: /usr/include/netinet/in.h:387
  Original Name: htons/usr/include/netinet/in.h:387

  Return Value: [FundamentalType(short unsigned int) size=16]

  Arguments:
    [FundamentalType(short unsigned int) size=16]
*/
// use @htons[U16](hostshort: U16)



/*
  Source: /usr/include/netinet/in.h:510
  Original Name: bindresvport/usr/include/netinet/in.h:510

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=128,fid: f34]
*/
// use @bindresvport[I32](sockfd: I32, sockin: NullablePointer[Sockaddrin] tag)



/*
  Source: /usr/include/netinet/in.h:513
  Original Name: bindresvport6/usr/include/netinet/in.h:513

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=224,fid: f34]
*/
// use @bindresvport6[I32](sockfd: I32, sockin: NullablePointer[Sockaddrin6] tag)



/*
  Source: /usr/include/rpc/netdb.h:53
  Original Name: setrpcent/usr/include/rpc/netdb.h:53

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @setrpcent[None](stayopen: I32)



/*
  Source: /usr/include/rpc/netdb.h:54
  Original Name: endrpcent/usr/include/rpc/netdb.h:54

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
// use @endrpcent[None]()



/*
  Source: /usr/include/rpc/netdb.h:55
  Original Name: getrpcbyname/usr/include/rpc/netdb.h:55

  Return Value: [PointerType size=64]->[Struct size=192,fid: f36]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @getrpcbyname[NullablePointer[Rpcent]](name: Pointer[U8] tag)



/*
  Source: /usr/include/rpc/netdb.h:56
  Original Name: getrpcbynumber/usr/include/rpc/netdb.h:56

  Return Value: [PointerType size=64]->[Struct size=192,fid: f36]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @getrpcbynumber[NullablePointer[Rpcent]](number: I32)



/*
  Source: /usr/include/rpc/netdb.h:57
  Original Name: getrpcent/usr/include/rpc/netdb.h:57

  Return Value: [PointerType size=64]->[Struct size=192,fid: f36]

  Arguments:
*/
// use @getrpcent[NullablePointer[Rpcent]]()



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
// use @getrpcbyname_r[I32](name: Pointer[U8] tag, resultbuf: NullablePointer[Rpcent] tag, buffer: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Rpcent]] tag)



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
// use @getrpcbynumber_r[I32](number: I32, resultbuf: NullablePointer[Rpcent] tag, buffer: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Rpcent]] tag)



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
// use @getrpcent_r[I32](resultbuf: NullablePointer[Rpcent] tag, buffer: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Rpcent]] tag)



/*
  Source: /usr/include/netdb.h:59
  Original Name: __h_errno_location/usr/include/netdb.h:59

  Return Value: [PointerType size=64]->[FundamentalType(int) size=32]

  Arguments:
*/
// use @__h_errno_location[Pointer[I32]]()



/*
  Source: /usr/include/netdb.h:90
  Original Name: herror/usr/include/netdb.h:90

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @herror[None](str: Pointer[U8] tag)



/*
  Source: /usr/include/netdb.h:93
  Original Name: hstrerror/usr/include/netdb.h:93

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @hstrerror[Pointer[U8]](errnum: I32)



/*
  Source: /usr/include/netdb.h:115
  Original Name: sethostent/usr/include/netdb.h:115

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @sethostent[None](stayopen: I32)



/*
  Source: /usr/include/netdb.h:121
  Original Name: endhostent/usr/include/netdb.h:121

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
// use @endhostent[None]()



/*
  Source: /usr/include/netdb.h:128
  Original Name: gethostent/usr/include/netdb.h:128

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
*/
// use @gethostent[NullablePointer[Hostent]]()



/*
  Source: /usr/include/netdb.h:135
  Original Name: gethostbyaddr/usr/include/netdb.h:135

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(int) size=32]
*/
// use @gethostbyaddr[NullablePointer[Hostent]](addr: Pointer[None] tag, len: U32, ptype: I32)



/*
  Source: /usr/include/netdb.h:142
  Original Name: gethostbyname/usr/include/netdb.h:142

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @gethostbyname[NullablePointer[Hostent]](name: Pointer[U8] tag)



/*
  Source: /usr/include/netdb.h:153
  Original Name: gethostbyname2/usr/include/netdb.h:153

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
*/
// use @gethostbyname2[NullablePointer[Hostent]](name: Pointer[U8] tag, af: I32)



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
// use @gethostent_r[I32](resultbuf: NullablePointer[Hostent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Hostent]] tag, herrnop: Pointer[I32] tag)



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
// use @gethostbyaddr_r[I32](addr: Pointer[None] tag, len: U32, ptype: I32, resultbuf: NullablePointer[Hostent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Hostent]] tag, herrnop: Pointer[I32] tag)



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
// use @gethostbyname_r[I32](name: Pointer[U8] tag, resultbuf: NullablePointer[Hostent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Hostent]] tag, herrnop: Pointer[I32] tag)



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
// use @gethostbyname2_r[I32](name: Pointer[U8] tag, af: I32, resultbuf: NullablePointer[Hostent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Hostent]] tag, herrnop: Pointer[I32] tag)



/*
  Source: /usr/include/netdb.h:196
  Original Name: setnetent/usr/include/netdb.h:196

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @setnetent[None](stayopen: I32)



/*
  Source: /usr/include/netdb.h:202
  Original Name: endnetent/usr/include/netdb.h:202

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
// use @endnetent[None]()



/*
  Source: /usr/include/netdb.h:209
  Original Name: getnetent/usr/include/netdb.h:209

  Return Value: [PointerType size=64]->[Struct size=192,fid: f37]

  Arguments:
*/
// use @getnetent[NullablePointer[Netent]]()



/*
  Source: /usr/include/netdb.h:216
  Original Name: getnetbyaddr/usr/include/netdb.h:216

  Return Value: [PointerType size=64]->[Struct size=192,fid: f37]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(int) size=32]
*/
// use @getnetbyaddr[NullablePointer[Netent]](net: U32, ptype: I32)



/*
  Source: /usr/include/netdb.h:222
  Original Name: getnetbyname/usr/include/netdb.h:222

  Return Value: [PointerType size=64]->[Struct size=192,fid: f37]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @getnetbyname[NullablePointer[Netent]](name: Pointer[U8] tag)



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
// use @getnetent_r[I32](resultbuf: NullablePointer[Netent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Netent]] tag, herrnop: Pointer[I32] tag)



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
// use @getnetbyaddr_r[I32](net: U32, ptype: I32, resultbuf: NullablePointer[Netent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Netent]] tag, herrnop: Pointer[I32] tag)



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
// use @getnetbyname_r[I32](name: Pointer[U8] tag, resultbuf: NullablePointer[Netent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Netent]] tag, herrnop: Pointer[I32] tag)



/*
  Source: /usr/include/netdb.h:268
  Original Name: setservent/usr/include/netdb.h:268

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @setservent[None](stayopen: I32)



/*
  Source: /usr/include/netdb.h:274
  Original Name: endservent/usr/include/netdb.h:274

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
// use @endservent[None]()



/*
  Source: /usr/include/netdb.h:281
  Original Name: getservent/usr/include/netdb.h:281

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
*/
// use @getservent[NullablePointer[Servent]]()



/*
  Source: /usr/include/netdb.h:288
  Original Name: getservbyname/usr/include/netdb.h:288

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @getservbyname[NullablePointer[Servent]](name: Pointer[U8] tag, proto: Pointer[U8] tag)



/*
  Source: /usr/include/netdb.h:295
  Original Name: getservbyport/usr/include/netdb.h:295

  Return Value: [PointerType size=64]->[Struct size=256,fid: f38]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @getservbyport[NullablePointer[Servent]](port: I32, proto: Pointer[U8] tag)



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
// use @getservent_r[I32](resultbuf: NullablePointer[Servent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Servent]] tag)



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
// use @getservbyname_r[I32](name: Pointer[U8] tag, proto: Pointer[U8] tag, resultbuf: NullablePointer[Servent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Servent]] tag)



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
// use @getservbyport_r[I32](port: I32, proto: Pointer[U8] tag, resultbuf: NullablePointer[Servent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Servent]] tag)



/*
  Source: /usr/include/netdb.h:336
  Original Name: setprotoent/usr/include/netdb.h:336

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @setprotoent[None](stayopen: I32)



/*
  Source: /usr/include/netdb.h:342
  Original Name: endprotoent/usr/include/netdb.h:342

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
// use @endprotoent[None]()



/*
  Source: /usr/include/netdb.h:349
  Original Name: getprotoent/usr/include/netdb.h:349

  Return Value: [PointerType size=64]->[Struct size=192,fid: f38]

  Arguments:
*/
// use @getprotoent[NullablePointer[Protoent]]()



/*
  Source: /usr/include/netdb.h:355
  Original Name: getprotobyname/usr/include/netdb.h:355

  Return Value: [PointerType size=64]->[Struct size=192,fid: f38]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @getprotobyname[NullablePointer[Protoent]](name: Pointer[U8] tag)



/*
  Source: /usr/include/netdb.h:361
  Original Name: getprotobynumber/usr/include/netdb.h:361

  Return Value: [PointerType size=64]->[Struct size=192,fid: f38]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @getprotobynumber[NullablePointer[Protoent]](proto: I32)



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
// use @getprotoent_r[I32](resultbuf: NullablePointer[Protoent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Protoent]] tag)



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
// use @getprotobyname_r[I32](name: Pointer[U8] tag, resultbuf: NullablePointer[Protoent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Protoent]] tag)



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
// use @getprotobynumber_r[I32](proto: I32, resultbuf: NullablePointer[Protoent] tag, buf: Pointer[U8] tag, buflen: U64, result: Pointer[NullablePointer[Protoent]] tag)



/*
  Source: /usr/include/netdb.h:393
  Original Name: setnetgrent/usr/include/netdb.h:393

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @setnetgrent[I32](netgroup: Pointer[U8] tag)



/*
  Source: /usr/include/netdb.h:401
  Original Name: endnetgrent/usr/include/netdb.h:401

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
// use @endnetgrent[None]()



/*
  Source: /usr/include/netdb.h:410
  Original Name: getnetgrent/usr/include/netdb.h:410

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @getnetgrent[I32](hostp: Pointer[Pointer[U8]] tag, userp: Pointer[Pointer[U8]] tag, domainp: Pointer[Pointer[U8]] tag)



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
// use @innetgr[I32](netgroup: Pointer[U8] tag, host: Pointer[U8] tag, user: Pointer[U8] tag, domain: Pointer[U8] tag)



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
// use @getnetgrent_r[I32](hostp: Pointer[Pointer[U8]] tag, userp: Pointer[Pointer[U8]] tag, domainp: Pointer[Pointer[U8]] tag, buffer: Pointer[U8] tag, buflen: U64)



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
// use @rcmd[I32](ahost: Pointer[Pointer[U8]] tag, rport: U16, locuser: Pointer[U8] tag, remuser: Pointer[U8] tag, cmd: Pointer[U8] tag, fd2p: Pointer[I32] tag)



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
// use @rcmd_af[I32](ahost: Pointer[Pointer[U8]] tag, rport: U16, locuser: Pointer[U8] tag, remuser: Pointer[U8] tag, cmd: Pointer[U8] tag, fd2p: Pointer[I32] tag, af: U16)



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
// use @rexec[I32](ahost: Pointer[Pointer[U8]] tag, rport: I32, name: Pointer[U8] tag, pass: Pointer[U8] tag, cmd: Pointer[U8] tag, fd2p: Pointer[I32] tag)



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
// use @rexec_af[I32](ahost: Pointer[Pointer[U8]] tag, rport: I32, name: Pointer[U8] tag, pass: Pointer[U8] tag, cmd: Pointer[U8] tag, fd2p: Pointer[I32] tag, af: U16)



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
// use @ruserok[I32](rhost: Pointer[U8] tag, suser: I32, remuser: Pointer[U8] tag, locuser: Pointer[U8] tag)



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
// use @ruserok_af[I32](rhost: Pointer[U8] tag, suser: I32, remuser: Pointer[U8] tag, locuser: Pointer[U8] tag, af: U16)



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
// use @iruserok[I32](raddr: U32, suser: I32, remuser: Pointer[U8] tag, locuser: Pointer[U8] tag)



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
// use @iruserok_af[I32](raddr: Pointer[None] tag, suser: I32, remuser: Pointer[U8] tag, locuser: Pointer[U8] tag, af: U16)



/*
  Source: /usr/include/netdb.h:549
  Original Name: rresvport/usr/include/netdb.h:549

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
// use @rresvport[I32](alport: Pointer[I32] tag)



/*
  Source: /usr/include/netdb.h:558
  Original Name: rresvport_af/usr/include/netdb.h:558

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
    [FundamentalType(short unsigned int) size=16]
*/
// use @rresvport_af[I32](alport: Pointer[I32] tag, af: U16)



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
// use @getaddrinfo[I32](name: Pointer[U8] tag, service: Pointer[U8] tag, req: NullablePointer[Addrinfo] tag, pai: Pointer[NullablePointer[Addrinfo]] tag)



/*
  Source: /usr/include/netdb.h:666
  Original Name: freeaddrinfo/usr/include/netdb.h:666

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=384,fid: f38]
*/
// use @freeaddrinfo[None](ai: NullablePointer[Addrinfo] tag)



/*
  Source: /usr/include/netdb.h:669
  Original Name: gai_strerror/usr/include/netdb.h:669

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @gai_strerror[Pointer[U8]](ecode: I32)



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
// use @getnameinfo[I32](sa: NullablePointer[Sockaddr] tag, salen: U32, host: Pointer[U8] tag, hostlen: U32, serv: Pointer[U8] tag, servlen: U32, flags: I32)



/*
  Source: /usr/include/arpa/inet.h:34
  Original Name: inet_addr/usr/include/arpa/inet.h:34

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @inet_addr[U32](cp: Pointer[U8] tag)



/*
  Source: /usr/include/arpa/inet.h:37
  Original Name: inet_lnaof/usr/include/arpa/inet.h:37

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [Struct size=32,fid: f34]
*/
// use @inet_lnaof[U32](in: Inaddr tag)



/*
  Source: /usr/include/arpa/inet.h:41
  Original Name: inet_makeaddr/usr/include/arpa/inet.h:41

  Return Value: [Struct size=32,fid: f34]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [FundamentalType(unsigned int) size=32]
*/
// use @inet_makeaddr[Inaddr](net: U32, host: U32)



/*
  Source: /usr/include/arpa/inet.h:45
  Original Name: inet_netof/usr/include/arpa/inet.h:45

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [Struct size=32,fid: f34]
*/
// use @inet_netof[U32](in: Inaddr tag)



/*
  Source: /usr/include/arpa/inet.h:49
  Original Name: inet_network/usr/include/arpa/inet.h:49

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @inet_network[U32](cp: Pointer[U8] tag)



/*
  Source: /usr/include/arpa/inet.h:53
  Original Name: inet_ntoa/usr/include/arpa/inet.h:53

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [Struct size=32,fid: f34]
*/
// use @inet_ntoa[Pointer[U8]](in: Inaddr tag)



/*
  Source: /usr/include/arpa/inet.h:58
  Original Name: inet_pton/usr/include/arpa/inet.h:58

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(void) size=0]
*/
// use @inet_pton[I32](af: I32, cp: Pointer[U8] tag, buf: Pointer[None] tag)



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
// use @inet_ntop[Pointer[U8]](af: I32, cp: Pointer[None] tag, buf: Pointer[U8] tag, len: U32)



/*
  Source: /usr/include/arpa/inet.h:73
  Original Name: inet_aton/usr/include/arpa/inet.h:73

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=32,fid: f34]
*/
// use @inet_aton[I32](cp: Pointer[U8] tag, inp: NullablePointer[Inaddr] tag)



/*
  Source: /usr/include/arpa/inet.h:77
  Original Name: inet_neta/usr/include/arpa/inet.h:77

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
*/
// use @inet_neta[Pointer[U8]](net: U32, buf: Pointer[U8] tag, len: U64)



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
// use @inet_net_ntop[Pointer[U8]](af: I32, cp: Pointer[None] tag, bits: I32, buf: Pointer[U8] tag, len: U64)



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
// use @inet_net_pton[I32](af: I32, cp: Pointer[U8] tag, buf: Pointer[None] tag, len: U64)



/*
  Source: /usr/include/arpa/inet.h:95
  Original Name: inet_nsap_addr/usr/include/arpa/inet.h:95

  Return Value: [FundamentalType(unsigned int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
// use @inet_nsap_addr[U32](cp: Pointer[U8] tag, buf: Pointer[U8] tag, len: I32)



/*
  Source: /usr/include/arpa/inet.h:100
  Original Name: inet_nsap_ntoa/usr/include/arpa/inet.h:100

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @inet_nsap_ntoa[Pointer[U8]](len: I32, cp: Pointer[U8] tag, buf: Pointer[U8] tag)



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
// use @bpf_filter[U32](parg0: NullablePointer[Bpfinsn] tag, parg1: Pointer[U8] tag, parg2: U32, parg3: U32)



/*
  Source: /usr/include/pcap/bpf.h:275
  Original Name: bpf_validate/usr/include/pcap/bpf.h:275

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=64,fid: f40]
    [FundamentalType(int) size=32]
*/
// use @bpf_validate[I32](f: NullablePointer[Bpfinsn] tag, len: I32)



/*
  Source: /usr/include/pcap/bpf.h:278
  Original Name: bpf_image/usr/include/pcap/bpf.h:278

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=64,fid: f40]
    [FundamentalType(int) size=32]
*/
// use @bpf_image[Pointer[U8]](parg0: NullablePointer[Bpfinsn] tag, parg1: I32)



/*
  Source: /usr/include/pcap/bpf.h:281
  Original Name: bpf_dump/usr/include/pcap/bpf.h:281

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f40]
    [FundamentalType(int) size=32]
*/
// use @bpf_dump[None](parg0: NullablePointer[Bpfprogram] tag, parg1: I32)



/*
  Source: /usr/include/stdio.h:152
  Original Name: remove/usr/include/stdio.h:152

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @remove[I32](filename: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:154
  Original Name: rename/usr/include/stdio.h:154

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @rename[I32](old: Pointer[U8] tag, new: Pointer[U8] tag)



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
// use @renameat[I32](oldfd: I32, old: Pointer[U8] tag, newfd: I32, new: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:178
  Original Name: fclose/usr/include/stdio.h:178

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fclose[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:188
  Original Name: tmpfile/usr/include/stdio.h:188

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
*/
// use @tmpfile[NullablePointer[IOFILE]]()



/*
  Source: /usr/include/stdio.h:205
  Original Name: tmpnam/usr/include/stdio.h:205

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @tmpnam[Pointer[U8]](parg0: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:210
  Original Name: tmpnam_r/usr/include/stdio.h:210

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @tmpnam_r[Pointer[U8]](s: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:222
  Original Name: tempnam/usr/include/stdio.h:222

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @tempnam[Pointer[U8]](dir: Pointer[U8] tag, pfx: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:230
  Original Name: fflush/usr/include/stdio.h:230

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fflush[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:239
  Original Name: fflush_unlocked/usr/include/stdio.h:239

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fflush_unlocked[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:258
  Original Name: fopen/usr/include/stdio.h:258

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @fopen[NullablePointer[IOFILE]](parg0: Pointer[U8] tag, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:265
  Original Name: freopen/usr/include/stdio.h:265

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @freopen[NullablePointer[IOFILE]](filename: Pointer[U8] tag, modes: Pointer[U8] tag, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:293
  Original Name: fdopen/usr/include/stdio.h:293

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @fdopen[NullablePointer[IOFILE]](fd: I32, modes: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:308
  Original Name: fmemopen/usr/include/stdio.h:308

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @fmemopen[NullablePointer[IOFILE]](s: Pointer[None] tag, len: U64, modes: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:314
  Original Name: open_memstream/usr/include/stdio.h:314

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
*/
// use @open_memstream[NullablePointer[IOFILE]](bufloc: Pointer[Pointer[U8]] tag, sizeloc: Pointer[U64] tag)



/*
  Source: /usr/include/stdio.h:328
  Original Name: setbuf/usr/include/stdio.h:328

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @setbuf[None](stream: NullablePointer[IOFILE] tag, buf: Pointer[U8] tag)



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
// use @setvbuf[I32](stream: NullablePointer[IOFILE] tag, buf: Pointer[U8] tag, modes: I32, n: U64)



/*
  Source: /usr/include/stdio.h:338
  Original Name: setbuffer/usr/include/stdio.h:338

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
*/
// use @setbuffer[None](stream: NullablePointer[IOFILE] tag, buf: Pointer[U8] tag, size: U64)



/*
  Source: /usr/include/stdio.h:342
  Original Name: setlinebuf/usr/include/stdio.h:342

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @setlinebuf[None](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:350
  Original Name: fprintf/usr/include/stdio.h:350

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @fprintf[I32](parg0: NullablePointer[IOFILE] tag, parg1: Pointer[U8] tag, ...)



/*
  Source: /usr/include/stdio.h:356
  Original Name: printf/usr/include/stdio.h:356

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @printf[I32](parg0: Pointer[U8] tag, ...)



/*
  Source: /usr/include/stdio.h:358
  Original Name: sprintf/usr/include/stdio.h:358

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @sprintf[I32](parg0: Pointer[U8] tag, parg1: Pointer[U8] tag, ...)



/*
  Source: /usr/include/stdio.h:365
  Original Name: vfprintf/usr/include/stdio.h:365

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
// use @vfprintf[I32](parg0: NullablePointer[IOFILE] tag, parg1: Pointer[U8] tag, parg2: NullablePointer[Valisttag] tag)



/*
  Source: /usr/include/stdio.h:371
  Original Name: vprintf/usr/include/stdio.h:371

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
// use @vprintf[I32](parg0: Pointer[U8] tag, parg1: NullablePointer[Valisttag] tag)



/*
  Source: /usr/include/stdio.h:373
  Original Name: vsprintf/usr/include/stdio.h:373

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
// use @vsprintf[I32](parg0: Pointer[U8] tag, parg1: Pointer[U8] tag, parg2: NullablePointer[Valisttag] tag)



/*
  Source: /usr/include/stdio.h:378
  Original Name: snprintf/usr/include/stdio.h:378

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @snprintf[I32](parg0: Pointer[U8] tag, parg1: U64, parg2: Pointer[U8] tag, ...)



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
// use @vsnprintf[I32](parg0: Pointer[U8] tag, parg1: U64, parg2: Pointer[U8] tag, parg3: NullablePointer[Valisttag] tag)



/*
  Source: /usr/include/stdio.h:403
  Original Name: vdprintf/usr/include/stdio.h:403

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
// use @vdprintf[I32](fd: I32, fmt: Pointer[U8] tag, arg: NullablePointer[Valisttag] tag)



/*
  Source: /usr/include/stdio.h:406
  Original Name: dprintf/usr/include/stdio.h:406

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @dprintf[I32](fd: I32, fmt: Pointer[U8] tag, ...)



/*
  Source: /usr/include/stdio.h:415
  Original Name: fscanf/usr/include/stdio.h:415

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @fscanf[I32](parg0: NullablePointer[IOFILE] tag, parg1: Pointer[U8] tag, ...)



/*
  Source: /usr/include/stdio.h:421
  Original Name: scanf/usr/include/stdio.h:421

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @scanf[I32](parg0: Pointer[U8] tag, ...)



/*
  Source: /usr/include/stdio.h:423
  Original Name: sscanf/usr/include/stdio.h:423

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @sscanf[I32](parg0: Pointer[U8] tag, parg1: Pointer[U8] tag, ...)



/*
  Source: /usr/include/stdio.h:459
  Original Name: vfscanf/usr/include/stdio.h:459

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
// use @vfscanf[I32](parg0: NullablePointer[IOFILE] tag, parg1: Pointer[U8] tag, parg2: NullablePointer[Valisttag] tag)



/*
  Source: /usr/include/stdio.h:467
  Original Name: vscanf/usr/include/stdio.h:467

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
// use @vscanf[I32](parg0: Pointer[U8] tag, parg1: NullablePointer[Valisttag] tag)



/*
  Source: /usr/include/stdio.h:471
  Original Name: vsscanf/usr/include/stdio.h:471

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f0]
*/
// use @vsscanf[I32](parg0: Pointer[U8] tag, parg1: Pointer[U8] tag, parg2: NullablePointer[Valisttag] tag)



/*
  Source: /usr/include/stdio.h:513
  Original Name: fgetc/usr/include/stdio.h:513

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fgetc[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:514
  Original Name: getc/usr/include/stdio.h:514

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @getc[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:520
  Original Name: getchar/usr/include/stdio.h:520

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
// use @getchar[I32]()



/*
  Source: /usr/include/stdio.h:527
  Original Name: getc_unlocked/usr/include/stdio.h:527

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @getc_unlocked[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:528
  Original Name: getchar_unlocked/usr/include/stdio.h:528

  Return Value: [FundamentalType(int) size=32]

  Arguments:
*/
// use @getchar_unlocked[I32]()



/*
  Source: /usr/include/stdio.h:538
  Original Name: fgetc_unlocked/usr/include/stdio.h:538

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fgetc_unlocked[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:549
  Original Name: fputc/usr/include/stdio.h:549

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fputc[I32](c: I32, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:550
  Original Name: putc/usr/include/stdio.h:550

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @putc[I32](c: I32, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:556
  Original Name: putchar/usr/include/stdio.h:556

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @putchar[I32](c: I32)



/*
  Source: /usr/include/stdio.h:565
  Original Name: fputc_unlocked/usr/include/stdio.h:565

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fputc_unlocked[I32](c: I32, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:573
  Original Name: putc_unlocked/usr/include/stdio.h:573

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @putc_unlocked[I32](c: I32, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:574
  Original Name: putchar_unlocked/usr/include/stdio.h:574

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
*/
// use @putchar_unlocked[I32](c: I32)



/*
  Source: /usr/include/stdio.h:581
  Original Name: getw/usr/include/stdio.h:581

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @getw[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:584
  Original Name: putw/usr/include/stdio.h:584

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @putw[I32](w: I32, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:592
  Original Name: fgets/usr/include/stdio.h:592

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fgets[Pointer[U8]](s: Pointer[U8] tag, n: I32, stream: NullablePointer[IOFILE] tag)



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
// use @__getdelim[I64](lineptr: Pointer[Pointer[U8]] tag, n: Pointer[U64] tag, delimiter: I32, stream: NullablePointer[IOFILE] tag)



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
// use @getdelim[I64](lineptr: Pointer[Pointer[U8]] tag, n: Pointer[U64] tag, delimiter: I32, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:645
  Original Name: getline/usr/include/stdio.h:645

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(long unsigned int) size=64]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @getline[I64](lineptr: Pointer[Pointer[U8]] tag, n: Pointer[U64] tag, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:655
  Original Name: fputs/usr/include/stdio.h:655

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fputs[I32](s: Pointer[U8] tag, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:661
  Original Name: puts/usr/include/stdio.h:661

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @puts[I32](s: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:668
  Original Name: ungetc/usr/include/stdio.h:668

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(int) size=32]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @ungetc[I32](c: I32, stream: NullablePointer[IOFILE] tag)



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
// use @fread[U64](parg0: Pointer[None] tag, parg1: U64, parg2: U64, parg3: NullablePointer[IOFILE] tag)



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
// use @fwrite[U64](parg0: Pointer[None] tag, parg1: U64, parg2: U64, parg3: NullablePointer[IOFILE] tag)



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
// use @fread_unlocked[U64](ptr: Pointer[None] tag, size: U64, n: U64, stream: NullablePointer[IOFILE] tag)



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
// use @fwrite_unlocked[U64](ptr: Pointer[None] tag, size: U64, n: U64, stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:713
  Original Name: fseek/usr/include/stdio.h:713

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [FundamentalType(long int) size=64]
    [FundamentalType(int) size=32]
*/
// use @fseek[I32](stream: NullablePointer[IOFILE] tag, off: I64, whence: I32)



/*
  Source: /usr/include/stdio.h:718
  Original Name: ftell/usr/include/stdio.h:718

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @ftell[I64](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:723
  Original Name: rewind/usr/include/stdio.h:723

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @rewind[None](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:736
  Original Name: fseeko/usr/include/stdio.h:736

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [FundamentalType(long int) size=64]
    [FundamentalType(int) size=32]
*/
// use @fseeko[I32](stream: NullablePointer[IOFILE] tag, off: I64, whence: I32)



/*
  Source: /usr/include/stdio.h:741
  Original Name: ftello/usr/include/stdio.h:741

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @ftello[I64](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:760
  Original Name: fgetpos/usr/include/stdio.h:760

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[Struct size=128,fid: f43]
*/
// use @fgetpos[I32](stream: NullablePointer[IOFILE] tag, pos: NullablePointer[Gfpost] tag)



/*
  Source: /usr/include/stdio.h:765
  Original Name: fsetpos/usr/include/stdio.h:765

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[Struct size=128,fid: f43]
*/
// use @fsetpos[I32](stream: NullablePointer[IOFILE] tag, pos: NullablePointer[Gfpost] tag)



/*
  Source: /usr/include/stdio.h:786
  Original Name: clearerr/usr/include/stdio.h:786

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @clearerr[None](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:788
  Original Name: feof/usr/include/stdio.h:788

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @feof[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:790
  Original Name: ferror/usr/include/stdio.h:790

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @ferror[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:794
  Original Name: clearerr_unlocked/usr/include/stdio.h:794

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @clearerr_unlocked[None](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:795
  Original Name: feof_unlocked/usr/include/stdio.h:795

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @feof_unlocked[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:796
  Original Name: ferror_unlocked/usr/include/stdio.h:796

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @ferror_unlocked[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:804
  Original Name: perror/usr/include/stdio.h:804

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @perror[None](s: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:809
  Original Name: fileno/usr/include/stdio.h:809

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fileno[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:814
  Original Name: fileno_unlocked/usr/include/stdio.h:814

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @fileno_unlocked[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:823
  Original Name: pclose/usr/include/stdio.h:823

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @pclose[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:829
  Original Name: popen/usr/include/stdio.h:829

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @popen[NullablePointer[IOFILE]](command: Pointer[U8] tag, modes: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:837
  Original Name: ctermid/usr/include/stdio.h:837

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
// use @ctermid[Pointer[U8]](s: Pointer[U8] tag)



/*
  Source: /usr/include/stdio.h:867
  Original Name: flockfile/usr/include/stdio.h:867

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @flockfile[None](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:871
  Original Name: ftrylockfile/usr/include/stdio.h:871

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @ftrylockfile[I32](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:874
  Original Name: funlockfile/usr/include/stdio.h:874

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @funlockfile[None](stream: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:885
  Original Name: __uflow/usr/include/stdio.h:885

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
// use @__uflow[I32](parg0: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/stdio.h:886
  Original Name: __overflow/usr/include/stdio.h:886

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [FundamentalType(int) size=32]
*/
// use @__overflow[I32](parg0: NullablePointer[IOFILE] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:386
  Original Name: pcap_init/usr/include/pcap/pcap.h:386

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_init[I32](parg0: U32, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:394
  Original Name: pcap_lookupdev/usr/include/pcap/pcap.h:394

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_lookupdev[Pointer[U8]](parg0: Pointer[U8] tag)



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
use @pcap_lookupnet[I32](parg0: Pointer[U8] tag, parg1: IPv4 tag, parg2: IPv4 tag, parg3: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:401
  Original Name: pcap_create/usr/include/pcap/pcap.h:401

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_create[NullablePointer[PcapS]](parg0: Pointer[U8] tag, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:404
  Original Name: pcap_set_snaplen/usr/include/pcap/pcap.h:404

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_snaplen[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:407
  Original Name: pcap_set_promisc/usr/include/pcap/pcap.h:407

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_promisc[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:410
  Original Name: pcap_can_set_rfmon/usr/include/pcap/pcap.h:410

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_can_set_rfmon[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:413
  Original Name: pcap_set_rfmon/usr/include/pcap/pcap.h:413

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_rfmon[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:416
  Original Name: pcap_set_timeout/usr/include/pcap/pcap.h:416

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_timeout[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:419
  Original Name: pcap_set_tstamp_type/usr/include/pcap/pcap.h:419

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_tstamp_type[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:422
  Original Name: pcap_set_immediate_mode/usr/include/pcap/pcap.h:422

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_immediate_mode[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:425
  Original Name: pcap_set_buffer_size/usr/include/pcap/pcap.h:425

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_buffer_size[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:428
  Original Name: pcap_set_tstamp_precision/usr/include/pcap/pcap.h:428

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_tstamp_precision[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:431
  Original Name: pcap_get_tstamp_precision/usr/include/pcap/pcap.h:431

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_get_tstamp_precision[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:434
  Original Name: pcap_activate/usr/include/pcap/pcap.h:434

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_activate[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:437
  Original Name: pcap_list_tstamp_types/usr/include/pcap/pcap.h:437

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(int) size=32]
*/
use @pcap_list_tstamp_types[I32](parg0: NullablePointer[PcapS] tag, parg1: NullablePointer[Pointer[I32]] tag)



/*
  Source: /usr/include/pcap/pcap.h:440
  Original Name: pcap_free_tstamp_types/usr/include/pcap/pcap.h:440

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @pcap_free_tstamp_types[None](parg0: Pointer[I32] tag)



/*
  Source: /usr/include/pcap/pcap.h:443
  Original Name: pcap_tstamp_type_name_to_val/usr/include/pcap/pcap.h:443

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_tstamp_type_name_to_val[I32](parg0: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:446
  Original Name: pcap_tstamp_type_val_to_name/usr/include/pcap/pcap.h:446

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @pcap_tstamp_type_val_to_name[Pointer[U8]](parg0: I32)



/*
  Source: /usr/include/pcap/pcap.h:449
  Original Name: pcap_tstamp_type_val_to_description/usr/include/pcap/pcap.h:449

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @pcap_tstamp_type_val_to_description[Pointer[U8]](parg0: I32)



/*
  Source: /usr/include/pcap/pcap.h:453
  Original Name: pcap_set_protocol_linux/usr/include/pcap/pcap.h:453

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_protocol_linux[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



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
use @pcap_open_live[NullablePointer[PcapS]](parg0: Pointer[U8] tag, parg1: I32, parg2: I32, parg3: I32, parg4: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:518
  Original Name: pcap_open_dead/usr/include/pcap/pcap.h:518

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
*/
use @pcap_open_dead[NullablePointer[PcapS]](parg0: I32, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:521
  Original Name: pcap_open_dead_with_tstamp_precision/usr/include/pcap/pcap.h:521

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [FundamentalType(int) size=32]
    [FundamentalType(int) size=32]
    [FundamentalType(unsigned int) size=32]
*/
use @pcap_open_dead_with_tstamp_precision[NullablePointer[PcapS]](parg0: I32, parg1: I32, parg2: U32)



/*
  Source: /usr/include/pcap/pcap.h:524
  Original Name: pcap_open_offline_with_tstamp_precision/usr/include/pcap/pcap.h:524

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_open_offline_with_tstamp_precision[NullablePointer[PcapS]](parg0: Pointer[U8] tag, parg1: U32, parg2: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:527
  Original Name: pcap_open_offline/usr/include/pcap/pcap.h:527

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_open_offline[NullablePointer[PcapS]](parg0: Pointer[U8] tag, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:555
  Original Name: pcap_fopen_offline_with_tstamp_precision/usr/include/pcap/pcap.h:555

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [FundamentalType(unsigned int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_fopen_offline_with_tstamp_precision[NullablePointer[PcapS]](parg0: NullablePointer[IOFILE] tag, parg1: U32, parg2: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:558
  Original Name: pcap_fopen_offline/usr/include/pcap/pcap.h:558

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=1728,fid: f45]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_fopen_offline[NullablePointer[PcapS]](parg0: NullablePointer[IOFILE] tag, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:562
  Original Name: pcap_close/usr/include/pcap/pcap.h:562

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_close[None](parg0: NullablePointer[PcapS] tag)



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
use @pcap_loop[I32](parg0: NullablePointer[PcapS] tag, parg1: I32, parg2: Pointer[None] tag, parg3: Pointer[U8] tag)



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
use @pcap_dispatch[I32](parg0: NullablePointer[PcapS] tag, parg1: I32, parg2: Pointer[None] tag, parg3: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:571
  Original Name: pcap_next/usr/include/pcap/pcap.h:571

  Return Value: [PointerType size=64]->[FundamentalType(unsigned char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=192,fid: f50]
*/
use @pcap_next[Pointer[U8]](parg0: NullablePointer[PcapS] tag, parg1: NullablePointer[Pcappkthdr] tag)



/*
  Source: /usr/include/pcap/pcap.h:574
  Original Name: pcap_next_ex/usr/include/pcap/pcap.h:574

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
// use @pcap_next_ex[I32](parg0: NullablePointer[PcapS] tag, parg1: Pointer[NullablePointer[Pcappkthdr]] tag, parg2: Pointer[Pointer[U8]] tag)



/*
  Source: /usr/include/pcap/pcap.h:577
  Original Name: pcap_breakloop/usr/include/pcap/pcap.h:577

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_breakloop[None](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:580
  Original Name: pcap_stats/usr/include/pcap/pcap.h:580

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=96,fid: f50]
*/
use @pcap_stats[I32](parg0: NullablePointer[PcapS] tag, parg1: NullablePointer[Pcapstat] tag)



/*
  Source: /usr/include/pcap/pcap.h:583
  Original Name: pcap_setfilter/usr/include/pcap/pcap.h:583

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=128,fid: f40]
*/
use @pcap_setfilter[I32](parg0: NullablePointer[PcapS] tag, parg1: NullablePointer[Bpfprogram] tag)



/*
  Source: /usr/include/pcap/pcap.h:586
  Original Name: pcap_setdirection/usr/include/pcap/pcap.h:586

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [Enumeration size=32,fid: f50]
*/
use @pcap_setdirection[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:589
  Original Name: pcap_getnonblock/usr/include/pcap/pcap.h:589

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_getnonblock[I32](parg0: NullablePointer[PcapS] tag, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:592
  Original Name: pcap_setnonblock/usr/include/pcap/pcap.h:592

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_setnonblock[I32](parg0: NullablePointer[PcapS] tag, parg1: I32, parg2: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:595
  Original Name: pcap_inject/usr/include/pcap/pcap.h:595

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(void) size=0]
    [FundamentalType(long unsigned int) size=64]
*/
use @pcap_inject[I32](parg0: NullablePointer[PcapS] tag, parg1: Pointer[None] tag, parg2: U64)



/*
  Source: /usr/include/pcap/pcap.h:598
  Original Name: pcap_sendpacket/usr/include/pcap/pcap.h:598

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [FundamentalType(int) size=32]
*/
use @pcap_sendpacket[I32](parg0: NullablePointer[PcapS] tag, parg1: Pointer[U8] tag, parg2: I32)



/*
  Source: /usr/include/pcap/pcap.h:601
  Original Name: pcap_statustostr/usr/include/pcap/pcap.h:601

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @pcap_statustostr[Pointer[U8]](parg0: I32)



/*
  Source: /usr/include/pcap/pcap.h:604
  Original Name: pcap_strerror/usr/include/pcap/pcap.h:604

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @pcap_strerror[Pointer[U8]](parg0: I32)



/*
  Source: /usr/include/pcap/pcap.h:607
  Original Name: pcap_geterr/usr/include/pcap/pcap.h:607

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_geterr[Pointer[U8]](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:610
  Original Name: pcap_perror/usr/include/pcap/pcap.h:610

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_perror[None](parg0: NullablePointer[PcapS] tag, parg1: Pointer[U8] tag)



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
use @pcap_compile[I32](parg0: NullablePointer[PcapS] tag, parg1: NullablePointer[Bpfprogram] tag, parg2: Pointer[U8] tag, parg3: I32, parg4: IPv4)



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
use @pcap_compile_nopcap[I32](parg0: I32, parg1: I32, parg2: NullablePointer[Bpfprogram] tag, parg3: Pointer[U8] tag, parg4: I32, parg5: U32)



/*
  Source: /usr/include/pcap/pcap.h:622
  Original Name: pcap_freecode/usr/include/pcap/pcap.h:622

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f40]
*/
use @pcap_freecode[None](parg0: NullablePointer[Bpfprogram] tag)



/*
  Source: /usr/include/pcap/pcap.h:625
  Original Name: pcap_offline_filter/usr/include/pcap/pcap.h:625

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=128,fid: f40]
    [PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @pcap_offline_filter[I32](parg0: NullablePointer[Bpfprogram] tag, parg1: NullablePointer[Pcappkthdr] tag, parg2: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:629
  Original Name: pcap_datalink/usr/include/pcap/pcap.h:629

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_datalink[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:632
  Original Name: pcap_datalink_ext/usr/include/pcap/pcap.h:632

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_datalink_ext[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:635
  Original Name: pcap_list_datalinks/usr/include/pcap/pcap.h:635

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[PointerType size=64]->[FundamentalType(int) size=32]
*/
use @pcap_list_datalinks[I32](parg0: NullablePointer[PcapS] tag, parg1: NullablePointer[Pointer[I32]] tag)



/*
  Source: /usr/include/pcap/pcap.h:638
  Original Name: pcap_set_datalink/usr/include/pcap/pcap.h:638

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [FundamentalType(int) size=32]
*/
use @pcap_set_datalink[I32](parg0: NullablePointer[PcapS] tag, parg1: I32)



/*
  Source: /usr/include/pcap/pcap.h:641
  Original Name: pcap_free_datalinks/usr/include/pcap/pcap.h:641

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(int) size=32]
*/
use @pcap_free_datalinks[None](parg0: Pointer[I32] tag)



/*
  Source: /usr/include/pcap/pcap.h:644
  Original Name: pcap_datalink_name_to_val/usr/include/pcap/pcap.h:644

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_datalink_name_to_val[I32](parg0: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:647
  Original Name: pcap_datalink_val_to_name/usr/include/pcap/pcap.h:647

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @pcap_datalink_val_to_name[Pointer[U8]](parg0: I32)



/*
  Source: /usr/include/pcap/pcap.h:650
  Original Name: pcap_datalink_val_to_description/usr/include/pcap/pcap.h:650

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @pcap_datalink_val_to_description[Pointer[U8]](parg0: I32)



/*
  Source: /usr/include/pcap/pcap.h:653
  Original Name: pcap_datalink_val_to_description_or_dlt/usr/include/pcap/pcap.h:653

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
    [FundamentalType(int) size=32]
*/
use @pcap_datalink_val_to_description_or_dlt[Pointer[U8]](parg0: I32)



/*
  Source: /usr/include/pcap/pcap.h:656
  Original Name: pcap_snapshot/usr/include/pcap/pcap.h:656

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_snapshot[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:659
  Original Name: pcap_is_swapped/usr/include/pcap/pcap.h:659

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_is_swapped[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:662
  Original Name: pcap_major_version/usr/include/pcap/pcap.h:662

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_major_version[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:665
  Original Name: pcap_minor_version/usr/include/pcap/pcap.h:665

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_minor_version[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:668
  Original Name: pcap_bufsize/usr/include/pcap/pcap.h:668

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_bufsize[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:672
  Original Name: pcap_file/usr/include/pcap/pcap.h:672

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_file[NullablePointer[IOFILE]](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:687
  Original Name: pcap_fileno/usr/include/pcap/pcap.h:687

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_fileno[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:695
  Original Name: pcap_dump_open/usr/include/pcap/pcap.h:695

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_dump_open[NullablePointer[Pcapdumper]](parg0: NullablePointer[PcapS] tag, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:720
  Original Name: pcap_dump_fopen/usr/include/pcap/pcap.h:720

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[Struct size=1728,fid: f45]
*/
use @pcap_dump_fopen[NullablePointer[Pcapdumper]](parg0: NullablePointer[PcapS] tag, fp: NullablePointer[IOFILE] tag)



/*
  Source: /usr/include/pcap/pcap.h:724
  Original Name: pcap_dump_open_append/usr/include/pcap/pcap.h:724

  Return Value: [PointerType size=64]->[Struct size=,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_dump_open_append[NullablePointer[Pcapdumper]](parg0: NullablePointer[PcapS] tag, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:727
  Original Name: pcap_dump_file/usr/include/pcap/pcap.h:727

  Return Value: [PointerType size=64]->[Struct size=1728,fid: f45]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_dump_file[NullablePointer[IOFILE]](parg0: NullablePointer[Pcapdumper] tag)



/*
  Source: /usr/include/pcap/pcap.h:730
  Original Name: pcap_dump_ftell/usr/include/pcap/pcap.h:730

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_dump_ftell[I64](parg0: NullablePointer[Pcapdumper] tag)



/*
  Source: /usr/include/pcap/pcap.h:733
  Original Name: pcap_dump_ftell64/usr/include/pcap/pcap.h:733

  Return Value: [FundamentalType(long int) size=64]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_dump_ftell64[I64](parg0: NullablePointer[Pcapdumper] tag)



/*
  Source: /usr/include/pcap/pcap.h:736
  Original Name: pcap_dump_flush/usr/include/pcap/pcap.h:736

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_dump_flush[I32](parg0: NullablePointer[Pcapdumper] tag)



/*
  Source: /usr/include/pcap/pcap.h:739
  Original Name: pcap_dump_close/usr/include/pcap/pcap.h:739

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_dump_close[None](parg0: NullablePointer[Pcapdumper] tag)



/*
  Source: /usr/include/pcap/pcap.h:742
  Original Name: pcap_dump/usr/include/pcap/pcap.h:742

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
    [PointerType size=64]->[Struct size=192,fid: f50]
    [PointerType size=64]->[FundamentalType(unsigned char) size=8]
*/
use @pcap_dump[None](parg0: Pointer[U8] tag, parg1: NullablePointer[Pcappkthdr] tag, parg2: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:745
  Original Name: pcap_findalldevs/usr/include/pcap/pcap.h:745

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[PointerType size=64]->[Struct size=320,fid: f50]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_findalldevs[I32](parg0: Pointer[NullablePointer[Pcapif]] tag, parg1: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:748
  Original Name: pcap_freealldevs/usr/include/pcap/pcap.h:748

  Return Value: [FundamentalType(void) size=0]

  Arguments:
    [PointerType size=64]->[Struct size=320,fid: f50]
*/
use @pcap_freealldevs[None](parg0: NullablePointer[Pcapif] tag)



/*
  Source: /usr/include/pcap/pcap.h:766
  Original Name: pcap_lib_version/usr/include/pcap/pcap.h:766

  Return Value: [PointerType size=64]->[FundamentalType(char) size=8]

  Arguments:
*/
use @pcap_lib_version[Pointer[U8]]()



/*
  Source: /usr/include/pcap/pcap.h:848
  Original Name: pcap_get_selectable_fd/usr/include/pcap/pcap.h:848

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_get_selectable_fd[I32](parg0: NullablePointer[PcapS] tag)



/*
  Source: /usr/include/pcap/pcap.h:851
  Original Name: pcap_get_required_select_timeout/usr/include/pcap/pcap.h:851

  Return Value: [PointerType size=64]->[Struct size=128,fid: f16]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_get_required_select_timeout[NullablePointer[Timeval]](parg0: NullablePointer[PcapS] tag)



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
use @pcap_open[NullablePointer[PcapS]](source: Pointer[U8] tag, snaplen: I32, flags: I32, readtimeout: I32, auth: NullablePointer[Pcaprmtauth] tag, errbuf: Pointer[U8] tag)



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
use @pcap_createsrcstr[I32](source: Pointer[U8] tag, ptype: I32, host: Pointer[U8] tag, port: Pointer[U8] tag, name: Pointer[U8] tag, errbuf: Pointer[U8] tag)



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
use @pcap_parsesrcstr[I32](source: Pointer[U8] tag, ptype: Pointer[I32] tag, host: Pointer[U8] tag, port: Pointer[U8] tag, name: Pointer[U8] tag, errbuf: Pointer[U8] tag)



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
use @pcap_findalldevs_ex[I32](source: Pointer[U8] tag, auth: NullablePointer[Pcaprmtauth] tag, alldevs: Pointer[NullablePointer[Pcapif]] tag, errbuf: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:1186
  Original Name: pcap_setsampling/usr/include/pcap/pcap.h:1186

  Return Value: [PointerType size=64]->[Struct size=64,fid: f50]

  Arguments:
    [PointerType size=64]->[Struct size=,fid: f50]
*/
use @pcap_setsampling[NullablePointer[Pcapsamp]](p: NullablePointer[PcapS] tag)



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
use @pcap_remoteact_accept[I32](address: Pointer[U8] tag, port: Pointer[U8] tag, hostlist: Pointer[U8] tag, connectinghost: Pointer[U8] tag, auth: NullablePointer[Pcaprmtauth] tag, errbuf: Pointer[U8] tag)



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
use @pcap_remoteact_accept_ex[I32](address: Pointer[U8] tag, port: Pointer[U8] tag, hostlist: Pointer[U8] tag, connectinghost: Pointer[U8] tag, auth: NullablePointer[Pcaprmtauth] tag, usesssl: I32, errbuf: Pointer[U8] tag)



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
use @pcap_remoteact_list[I32](hostlist: Pointer[U8] tag, sep: U8, size: I32, errbuf: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:1210
  Original Name: pcap_remoteact_close/usr/include/pcap/pcap.h:1210

  Return Value: [FundamentalType(int) size=32]

  Arguments:
    [PointerType size=64]->[FundamentalType(char) size=8]
    [PointerType size=64]->[FundamentalType(char) size=8]
*/
use @pcap_remoteact_close[I32](host: Pointer[U8] tag, errbuf: Pointer[U8] tag)



/*
  Source: /usr/include/pcap/pcap.h:1213
  Original Name: pcap_remoteact_cleanup/usr/include/pcap/pcap.h:1213

  Return Value: [FundamentalType(void) size=0]

  Arguments:
*/
use @pcap_remoteact_cleanup[None]()

