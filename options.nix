{ lib, ... }:
let
    inherit (lib) mkOption types;
in
{ 
    options.tf2 = {
        config = mkOption {
            type = types.str;
            default = "";
        };
        path = mkOption {
            type = types.str;
            default = "";
        };
    };
}
