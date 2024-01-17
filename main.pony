use "pcap"

actor Main
  let max_err_length: USize = 256
  let max_network_devices: USize = 64
  var dev: PcapDevice = PcapDevice
  var netp: U32 = 0
  var maskp: U32 = 0
  new create(env: Env) =>
    env.out.print("Hello")

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

//      Pcap.compile_and_set(dev, "icmp", false)?
      Pcap.next(dev)

      try
        env.out.print("Packet size: " +
        dev.pcaphdr.apply()?.len.string())
      else
        env.out.print("Didn't get the packet's header")
        error
      end
    else
      env.out.print("Failed Out (final)")
      env.out.print(dev.err)
    end
