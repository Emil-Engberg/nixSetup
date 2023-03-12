{ pkgs, user, location, ... }:

{
  imports = [                                # Home Manager Modules
    ../configs
  ];

    programs = {
        home-manager.enable = true;
    };

    home = {
        #user = "${user}";
        #homeDirectory = "/home/${user}";

        packages = with pkgs; [
            neofetch
            google-chrome
            vscode
        ];
    };
}