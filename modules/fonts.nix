{ config, pkgs, ... }:

{
  fonts = {
    fontDir.enable = true;

    fonts = with pkgs; [
      jetbrains-mono
      ubuntu_font_family
      (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ];
  };    
}