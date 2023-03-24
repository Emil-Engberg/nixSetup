{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules
      ../../configs
    ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "22.11";
}
