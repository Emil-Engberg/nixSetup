{ config, pkgs, lib, ... }:

{
  xdg.configFile."rofi/config.rasi".source = ./config.rasi;
  xdg.configFile."rofi/colors.rasi".source = ./colors.rasi;
  xdg.configFile."rofi/fonts.rasi".source = ./fonts.rasi;
}
