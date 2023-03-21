{ lib, inputs, nixpkgs, home-manager, user, location, nix-doom-emacs, ... }:

let
  system = "x86_64-linux";                               

  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;                            
  };

  lib = nixpkgs.lib;
in
{
  desktop = lib.nixosSystem {
    inherit system;
    specialArgs = {
      inherit inputs user location;
      host = {
        hostName = "desktop";
      };
    };
    modules = [
      ./desktop

      home-manager.nixosModules.home-manager {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.extraSpecialArgs = {
          inherit user;
          host = {
            hostName = "desktop";
          };
        };
        home-manager.users.${user} = {
          home.stateVersion = "22.05";
          imports = [
            ./desktop/home.nix
            nix-doom-emacs.hmModule
          ];
        };
      }
    ];
  };
}
