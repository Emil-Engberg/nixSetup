{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader = {
    systemd-boot.enable = true;
    systemd-boot.configurationLimit = 5;
    efi.canTouchEfiVariables = true;
    efi.efiSysMountPoint = "/boot/efi";
    timeout = 3;
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  time.timeZone = "Europe/Stockholm";

  i18n = {
    defaultLocale = "en_US.UTF-8";

    extraLocaleSettings = {
      LC_ADDRESS = "sv_SE.UTF-8";
      LC_IDENTIFICATION = "sv_SE.UTF-8";
      LC_MEASUREMENT = "sv_SE.UTF-8";
      LC_MONETARY = "sv_SE.UTF-8";
      LC_NAME = "sv_SE.UTF-8";
      LC_NUMERIC = "sv_SE.UTF-8";
      LC_PAPER = "sv_SE.UTF-8";
      LC_TELEPHONE = "sv_SE.UTF-8";
      LC_TIME = "sv_SE.UTF-8";
    };
  };

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  
  security = {

    polkit.enable = true;
    
    rtkit.enable = true;

  };

  services = {

    xserver = {
      enable = true;

      layout = "se";

      displayManager.lightdm.enable = true;
      desktopManager.cinnamon.enable =true;
    };

    pipewire = {
      enable = true;
      jack.enable = true;
      pulse.enable = true;

      alsa = {
        enable = true;
        support32Bit = true;
      };
    };
  };

  console.keyMap = "sv-latin1";

  users.users.sebastian = {
    isNormalUser = true;
    description = "Sebastian Lindholm Gustafsson";
    initialPassword = "pass";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      firefox
    ];
  };

  nixpkgs.config.allowUnfree = true;

  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 2d";
    };
  };

  environment.systemPackages = with pkgs; [
    git
    vim
    wget
    unzip
    zip
  ];

  system.stateVersion = "22.11";

}
