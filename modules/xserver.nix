{ config, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      layout = "se";
      dpi = 1;
      displayManager = {
        sddm.enable = true;
      };
      desktopManager.plasma5.enable =true;
    };
  };
}