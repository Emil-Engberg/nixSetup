{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ../../modules
      ../../configs
    ];

  boot = {
    initrd.kernelModules = [ "amdgpu" ];
  };

  services = {
    xserver = {
      videoDrivers = [ "amdgpu" ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "22.11";
}
