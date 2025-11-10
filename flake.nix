{
    description = "A flake for managing TF2 on NixOS";
    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager.url = "github:nix-community/home-manager";
        home-manager.inputs.nixpkgs.follows = "nixpkgs";
    };

    outputs = { ... } @inputs: {
        homeManagerModules.default = {
            imports = [
                ./options.nix
                ./default.nix
            ];
        };
    };
}
