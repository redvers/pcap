class PcapAddress
  var addr: String val = ""
  var netmask: String val = ""
  var broadcast: String val = ""
  var dstaddr: String val = ""

  new create(a: NullablePointer[Pcapaddr]) => None

  fun ref apply(a: NullablePointer[Pcapaddr]): NullablePointer[Pcapaddr] ? =>
    try
      if (a.apply()?.addr.apply()?.sa_family != 2) then error end // IPv4 only to start
    addr = a.apply()?.addr.apply()?.sa_data.a2.string() + "." +
           a.apply()?.addr.apply()?.sa_data.a3.string() + "." +
           a.apply()?.addr.apply()?.sa_data.a4.string() + "." +
           a.apply()?.addr.apply()?.sa_data.a5.string()
    end
    try
      if (a.apply()?.netmask.apply()?.sa_family != 2) then error end // IPv4 only to start
    netmask = a.apply()?.netmask.apply()?.sa_data.a2.string() + "." +
           a.apply()?.netmask.apply()?.sa_data.a3.string() + "." +
           a.apply()?.netmask.apply()?.sa_data.a4.string() + "." +
           a.apply()?.netmask.apply()?.sa_data.a5.string()
    end
    try
      if (a.apply()?.broadaddr.apply()?.sa_family != 2) then error end // IPv4 only to start
    broadcast = a.apply()?.broadaddr.apply()?.sa_data.a2.string() + "." +
           a.apply()?.broadaddr.apply()?.sa_data.a3.string() + "." +
           a.apply()?.broadaddr.apply()?.sa_data.a4.string() + "." +
           a.apply()?.broadaddr.apply()?.sa_data.a5.string()
    end
    try
      if (a.apply()?.dstaddr.apply()?.sa_family != 2) then error end // IPv4 only to start
    dstaddr = a.apply()?.dstaddr.apply()?.sa_data.a2.string() + "." +
           a.apply()?.dstaddr.apply()?.sa_data.a3.string() + "." +
           a.apply()?.dstaddr.apply()?.sa_data.a4.string() + "." +
           a.apply()?.dstaddr.apply()?.sa_data.a5.string()
    end
    a.apply()?.next

