{
  description = "Home Manager configuration of F.Ice";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixpkgs-fish.url = "github:NixOS/nixpkgs/fish";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{ nixpkgs, home-manager, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
        overlays = with inputs; [
          (final: prev: {
            fish = nixpkgs-fish.legacyPackages.${system}.fish;
          })
        ];
      };
    in {
      homeConfigurations.frost_ice = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./home.nix ];
      };
    };
}
