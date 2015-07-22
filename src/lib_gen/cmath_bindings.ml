open Ctypes

module C(F: Cstubs.FOREIGN) = struct
  let lgamma  = F.foreign "lgamma"  (double @-> returning double)
  let tgamma  = F.foreign "tgamma"  (double @-> returning double)
  let erf     = F.foreign "erf"     (double @-> returning double)
  let erfc    = F.foreign "erfc"    (double @-> returning double)
end
