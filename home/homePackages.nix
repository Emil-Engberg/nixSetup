{ pkgs, ... }:

{
    home = {
        packages = with pkgs; [
          neofetch
          firefox
            kitty
            pavucontrol
            discord
            spotify
            dconf
            prismlauncher
        ];
    };    
}
