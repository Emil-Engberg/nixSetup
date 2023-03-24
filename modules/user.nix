{ config, pkgs, ... }:

{
    users.users.sebastian = {
        isNormalUser = true;
        description = "Emil Engberg";
        initialPassword = "pass";
        extraGroups = [ "networkmanager" "wheel" "audio" "sound" ];
    };   
}
