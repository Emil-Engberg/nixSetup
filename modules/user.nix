{ config, pkgs, ... }:

{
    users.users.sebastian = {
        isNormalUser = true;
        description = "Sebastian Lindholm Gustafsson";
        initialPassword = "pass";
        extraGroups = [ "networkmanager" "wheel" "audio" "sound" ];
        shell = pkgs.zsh;
    };   
}