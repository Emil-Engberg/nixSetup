{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      layout = "se";
      displayManager = {
        sddm.enable = true;
      };
      desktopManager.plasma5.enable =true;
    };
  };
}