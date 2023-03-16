{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    initrd.kernelModules = [ "amdgpu" ];
    loader = {
      systemd-boot.enable = true;
      systemd-boot.configurationLimit = 5;
      efi.canTouchEfiVariables = true;
      efi.efiSysMountPoint = "/boot/efi";
      timeout = 3;
    };
  };

  hardware = {
    pulseaudio = {
      enable = true;
      support32Bit = true;
      package = pkgs.pulseaudioFull;
    };
    opengl = {
      driSupport = true;
      driSupport32Bit = true;

      extraPackages = with pkgs; [
        rocm-opencl-icd 
        rocm-opencl-runtime
        amdvlk
        driversi686Linux.amdvlk
        mesa.drivers
      ];
    };
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
  
  security = {
    polkit.enable = true;
    rtkit.enable = true;
  };

  services = {
    xserver = {
      videoDrivers = [ "amdgpu" ];
      enable = true;
      layout = "se";
      displayManager = {
        sddm.enable = true;
      };
      desktopManager.cinnamon.enable =true;
    };
  };

  console.keyMap = "sv-latin1";

  users.users.sebastian = {
    isNormalUser = true;
    description = "Sebastian Lindholm Gustafsson";
    initialPassword = "pass";
    extraGroups = [ "networkmanager" "wheel" "audio" "sound" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
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
    wget
    unzip
    zip
  ];

  system.stateVersion = "22.11";

}
