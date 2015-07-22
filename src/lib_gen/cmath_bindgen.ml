open Ctypes

let _ =
  let fmt = Format.formatter_of_out_channel (open_out "src/lib/cmath_stubs.c") in
  Format.fprintf fmt "#include <math.h>@.";
  Cstubs.write_c fmt ~prefix:"caml_" (module Cmath_bindings.C);

  let fmt = Format.formatter_of_out_channel (open_out "src/lib/cmath_generated.ml") in
  Cstubs.write_ml fmt ~prefix:"caml_" (module Cmath_bindings.C)
