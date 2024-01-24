use "pcap"
use @printf[I32](fmt: Pointer[U8] tag, ...)

actor Main
  let max_err_length: USize = 256
  let max_network_devices: USize = 64
  var thistag: Main tag = recover tag this end
  let pcap: PonyPcap[Main tag]

  new create(env: Env) =>
    env.out.print("Hello")

    pcap =
      PonyPcap[Main tag](where device = "ens33",
                     failcb = thistag~failure(),
                  successcb = thistag~success(),
                     filter = "")



    be success() =>
    let cb: PcapGotPacket[Main tag] = @{(obj: Main tag, hdr: Pcappkthdr iso, data: Pointer[U8] ref) =>
        @printf("got me a packet raw CB 0\n".cstring())
        obj.test()
      }
//      pcap.register_callback(cb)
      pcap.start_capture_x(thistag)

    be failure(errbuf: String val) =>
      @printf("failure: %s\n".cstring(), errbuf.cstring())

    be test() =>
      @printf("TEST\n".cstring())

    fun @ccb(obj: Any tag, hdr: Pcappkthdr iso, data: Pointer[U8] ref) =>
      let s: Pcappkthdr val = consume hdr

    /*
    dev = Pcap.lookupdev()
    try
      env.out.print(dev.device()?)

      try
      Pcap.lookupnet(dev)?
      env.out.print(dev.net.string())
      env.out.print(dev.mask.string())
      else
        env.out.print("We aborted (lookupnet)")
        env.out.print(dev.err)
        env.out.print(dev.device()?)
        error
      end

      Pcap.open_live(dev, 128, true, 1000)?
      let linktype: LinkType = Pcap.datalink(dev)
      env.out.print("Datalink Type: " + linktype.string())

      Pcap.compile_and_set(dev, "tcp", false)?
    while (true) do
      Pcap.next(dev)
      let e: Sniffethernet = dev.eth()
      env.out.print("dhost: " +
                    e.ether_dhost.a0.string() + ":" +
                    e.ether_dhost.a1.string() + ":" +
                    e.ether_dhost.a2.string() + ":" +
                    e.ether_dhost.a3.string() + ":" +
                    e.ether_dhost.a4.string() + ":" +
                    e.ether_dhost.a5.string())
      env.out.print("shost: " +
                    e.ether_shost.a0.string() + ":" +
                    e.ether_shost.a1.string() + ":" +
                    e.ether_shost.a2.string() + ":" +
                    e.ether_shost.a3.string() + ":" +
                    e.ether_shost.a4.string() + ":" +
                    e.ether_shost.a5.string())
      env.out.print("ether_type: " + e.ether_type.string())

      let ip: Sniffip = dev.ip()
      env.out.print("IP Src: " +
                    ip.ip_src.a.string() + "." +
                    ip.ip_src.b.string() + "." +
                    ip.ip_src.c.string() + "." +
                    ip.ip_src.d.string())
      env.out.print("IP Dst: " +
                    ip.ip_dst.a.string() + "." +
                    ip.ip_dst.b.string() + "." +
                    ip.ip_dst.c.string() + "." +
                    ip.ip_dst.d.string())

      let tcp: Snifftcp = dev.tcp(ip)

      env.out.print("iplen size: " + ip.ip_offset().string())
      env.out.print("Src Port: " + tcp.th_sport.bswap().string())
      env.out.print("Dst Port: " + tcp.th_dport.bswap().string())

      try
        env.out.print("Packet size: " +
        dev.pcaphdr.apply()?.len.string())
      else
        env.out.print("Didn't get the packet's header")
        error
      end
    end

    else
      env.out.print("Failed Out (final)")
      env.out.print(dev.err)
    end



*/
