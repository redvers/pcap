struct IPv4
  var a: U8 = 0
  var b: U8 = 0
  var c: U8 = 0
  var d: U8 = 0

primitive PcapConstants
  fun max_err_length(): USize => 256

class Pcap
  fun lookupdev(): (Bool, String val) =>
    let errbuff: String = String(PcapConstants.max_err_length())

    var pcstring: Pointer[U8] = @pcap_lookupdev(errbuff.cstring())
    if (pcstring.is_null()) then
      return (false, errbuff)
    else
      let p: String iso = String.from_cstring(pcstring).clone()
      return (true, consume p)
    end

