primitive PcapConstants
  fun max_err_length(): USize => 256
  fun bufsiz(): USize => 8192

primitive LinkTypeUnsupported
  fun i32(): I32 => -1
  fun string(): String => "Unsupported"
primitive LinkTypeNull
  fun i32(): I32 =>  0
  fun string(): String => "Null"
primitive Ethernet
  fun i32(): I32 =>  1
  fun string(): String => "Ethernet"

type LinkType is (LinkTypeUnsupported | LinkTypeNull | Ethernet)

primitive LinkTypeResolver
  fun apply(i: I32): LinkType =>
    match i
    | if (i == 0) => LinkTypeNull
    | if (i == 1) => Ethernet
    else
      LinkTypeUnsupported
    end
