{
  description = "My first personal NixOS flake. ";

  inputs = {
    
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";   

    home-manager = {                                                     
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    dotfiles = {
    url = "github:Emil-Engberg/Emacs_conf";
    flake = false;
  };
  };

  outputs = { self, nixpkgs, home-manager, dotfiles,... }@inputs: 
  let
    user = "emil";
    location = "/$HOME/.setup";
  in
  {
    nixosConfigurations = (
     import ./host {
        inherit (nixpkgs) lib;
        inherit inputs nixpkgs user location home-manager dotfiles;
      }
    );
  };
}
