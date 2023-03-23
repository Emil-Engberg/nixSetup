{ config, pkgs, ... }:

{
    environment.systemPackages = with pkgs; [
        wget
        unzip
        zip
        appimage-run
        htop
        jdk
    ];    
}