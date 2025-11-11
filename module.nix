{ config, lib, ... }:
let
    cfg = config.programs.tf2;
    inherit (lib) mkIf;
in
{
    config = mkIf cfg.enable {
        home.activation.tf2nix = lib.hm.dag.entryAfter ["writeBoundary"] ''
            mkdir ${cfg.path}
            cat > "${cfg.path}/autoexec.cfg" << 'fov_desired 90.00'
        '';
    };
}
