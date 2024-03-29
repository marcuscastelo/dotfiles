{
  description = "Marucs NixOS System";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  };

  outputs = { self, nixpkgs, ... } : 
    let
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        nixos-marucs = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [ ./configuration.nix ];
        };
      };
    };
}