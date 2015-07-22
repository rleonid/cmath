
open Ctypes

module C = Cmath_bindings.C(Cmath_generated)

let lgamma = C.lgamma
let tgamma = C.tgamma
let erf    = C.erf
let erfc   = C.erfc
