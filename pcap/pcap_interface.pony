class PcapInterface
  var name: String val = ""
  var description: String val = ""
  var addresses: Array[PcapAddress] = Array[PcapAddress]
  var flags: U32 = 0

  new create(strut: NullablePointer[Pcapif])? => None
    name = String.from_cstring(strut.apply()?.name).clone()
    description = String.from_cstring(strut.apply()?.description).clone()
    flags = strut.apply()?.flags

    let addrs: Array[PcapAddress] = Array[PcapAddress]

    try
      var pcapad: NullablePointer[Pcapaddr] = strut.apply()?.addresses
      while (true) do
        var pcapaddr: PcapAddress = PcapAddress.create(pcapad)
        pcapad = pcapaddr.apply(pcapad)?
        if (pcapaddr.addr == "") then continue end
        addrs.push(pcapaddr)
      end
    else
      None
    end

    addresses = addrs




  fun ref apply(strut: NullablePointer[Pcapif]): NullablePointer[Pcapif] ? =>
    strut.apply()?.next

