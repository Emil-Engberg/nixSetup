{ pkgs, config, ... }:
{
xdg.configFile.".emacs.d".source = ./Emacs_conf;
 }