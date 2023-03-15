{ config, lib, pkgs, host, ... }:
let
  exec = "exec Hyprland";
in
{
  #imports = [ ../../programs/waybar.nix ];

#  environment = {
  #  variables = {
      #WLR_NO_HARDWARE_CURSORS="1";         # Possible variables needed in vm
      #WLR_RENDERER_ALLOW_SOFTWARE="1";
  #    XDG_CURRENT_DESKTOP="Hyprland";
  #    XDG_SESSION_TYPE="wayland";
  #    XDG_SESSION_DESKTOP="Hyprland";
  #  };
  #  sessionVariables =  {
  #    QT_QPA_PLATFORM = "wayland";
  #    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";

 #     GDK_BACKEND = "wayland";
  #    WLR_NO_HARDWARE_CURSORS = "1";
  #    MOZ_ENABLE_WAYLAND = "1";
  #  };
   # systemPackages = with pkgs; [
  #    grim
   #   swaybg
  #    slurp
  ##  ];
 # };

  programs = {
    hyprland = {
      enable = true;
    };
  };
}