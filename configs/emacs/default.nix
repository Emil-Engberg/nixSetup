{ config, pkgs, lib, dotfiles,... }:

{
xdg.configFile.emacs.source = "${dotfiles}";
}
