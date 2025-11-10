{
    description = "A flake for managing TF2 on NixOS";
    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager.url = "github:nix-community/home-manager";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { config, ... } @inputs: {
        homeManagerModules.default = {
            imports = [
                ./options.nix
            ];

            home.file.${config.tf2.path}.text = config.tf2.config;
        };
    };
}
