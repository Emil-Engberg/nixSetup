{ config, pkgs, ... }:

{
    users.users.emil = {
        isNormalUser = true;
        description = "Emil Engberg";
        initialPassword = "pass";
        extraGroups = [ "networkmanager" "wheel" "audio" "sound" ];
    };   
}
