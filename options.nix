{ lib, ... }:
let
    inherit (lib) mkOption types mkEnableOption;
in
{ 
    options.programs.tf2 = {
        enable = mkEnableOption "Enables tf2 module";
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
