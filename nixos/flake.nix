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
        # TODO: change to nixos-marucs after reboot
        nixos = lib.nixosSystem {
          system = "x86_64-linux";
          modules = [ ./configuration.nix ];
        };
      };
    };
}