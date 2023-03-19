{ pkgs, user, location, ... }:

{
  imports = [                              
    ../configs/home.nix
  ];

    programs = {
      home-manager.enable = true;

      doom-emacs = {
        enable = true;
        doomPrivateDir = ../configs/doom;
      };
    };

    services = {
      emacs = {
        enable = true;
      };
    };

    home = {
        packages = with pkgs; [
            neofetch
            google-chrome
            vscode
            kitty
            pavucontrol
            unityhub
            discord
            yakuake
            spotify
        ];
    };

    gtk = {
      theme = {
        package = pkgs.nordic;
        name = "Nordic";
      };
    };
}
