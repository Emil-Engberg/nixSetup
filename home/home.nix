{ pkgs, ... }:

{
    imports = [
        ../configs/home.nix
        ./emacs.nix
        ./gtk.nix
        ./homePackages.nix
    ];

    programs = {
        home-manager.enable = true;
    };
}