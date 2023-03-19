{ config, pkgs, lib, ... }:

{
  xdg.configFile."kitty/kitty.conf".source = ./kitty.conf;
}
