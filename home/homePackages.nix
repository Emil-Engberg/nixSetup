{ pkgs, ... }:

{
    home = {
        packages = with pkgs; [
            neofetch
            google-chrome
            vscode
            kitty
            pavucontrol
            discord
            yakuake
            spotify
            dconf
            prismlauncher
        ];
    };    
}