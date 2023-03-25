{ config, pkgs, lib,... }:

{
xdg.configFile."./.emacs.d".source = ./Emacs_conf;
}
