{ config, pkgs, lib,... }:

{
xdg.configFile."./.emacs.d".source = config.lib.file.mkOutOfStoreSymlink ./Emacs_conf;
}
