{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gnomeExtensions.frippery-applications-menu
    plank
    juno-theme
    gnomeExtensions.tweaks-in-system-menu
  ];
}

