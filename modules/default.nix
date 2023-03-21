{ config, pkgs, ... }:

{
      imports =
    [
      ./bluetooth.nix
      ./boot.nix
      ./hardware.nix
      ./network.nix
      ./nix.nix
      ./security.nix
      ./sound.nix
      ./sysPackages.nix
      ./user.nix
      ./xserver.nix
      ./locale.nix
      ./fonts.nix
    ];
}