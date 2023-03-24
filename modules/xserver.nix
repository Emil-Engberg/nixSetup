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
      desktopManager.cinnamon.enable = true;
    };
  };
}
