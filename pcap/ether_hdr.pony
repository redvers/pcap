primitive EtherHDR
  fun dhost(d: Array[U8] val): (U8, U8, U8, U8, U8, U8) ? =>
    (d(0)?, d(1)?, d(2)?, d(3)?, d(4)?, d(5)?)
  fun shost(d: Array[U8] val): (U8, U8, U8, U8, U8, U8) ? =>
    (d(6)?, d(7)?, d(8)?, d(9)?, d(10)?, d(11)?)
  fun ethertype(d: Array[U8] val): U16 ? =>
    d.read_u16(12)?.bswap()

