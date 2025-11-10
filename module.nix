{ config, lib }:
let
    cfg = config.programs.tf2;
    inherit (lib) mkIf;
in
{
    config = mkIf cfg.enable{
        home.file.${cfg.path}.text = cfg.config;
    };
}
