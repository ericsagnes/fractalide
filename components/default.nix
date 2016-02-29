{ pkgs, support, ... }:
let
callPackage = pkgs.lib.callPackageWith (pkgs // support // self);
# insert in alphabetical order to reduce conflicts
self = rec {
  docs = callPackage ./docs {};
  development_capnp_encode = callPackage ./development/capnp/encode {};
  development_fbp_errors = callPackage ./development/fbp/errors {};
  development_fbp_fvm = callPackage ./development/fbp/fvm {};
  development_fbp_parser_lexical = callPackage ./development/fbp/parser/lexical {};
  development_fbp_parser_print_graph = callPackage ./development/fbp/parser/print_graph {};
  development_fbp_parser_semantic = callPackage ./development/fbp/parser/semantic {};
  development_fbp_scheduler = callPackage ./development/fbp/scheduler {};
  development_test =callPackage ./development/test {};
  io_print = callPackage ./io/print {};
  ip_clone = callPackage ./ip/clone {};
  file_open = callPackage ./file/open {};
  file_print = callPackage ./file/print {};
  maths_boolean_and = callPackage ./maths/boolean/and {};
  maths_boolean_nand = callPackage ./maths/boolean/nand {};
  maths_boolean_not = callPackage ./maths/boolean/not {};
  maths_boolean_or = callPackage ./maths/boolean/or {};
  maths_boolean_xor = callPackage ./maths/boolean/xor {};
  maths_boolean_print = callPackage ./maths/boolean/print {};
  maths_number_add = callPackage ./maths/number/add {};
  print = callPackage ./print {};
  ui_conrod_button = callPackage ./ui/conrod/button {};
  ui_conrod_window = callPackage ./ui/conrod/window {};
  ui_magic = callPackage ./ui/magic {};
  net_ndn_face = callPackage ./net/ndn/face {};
  web_server = callPackage ./web/server {};
};
in
self
