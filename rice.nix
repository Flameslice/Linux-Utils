{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    liberation_ttf
    fira
    fira-code
    plank
    papirus-icon-theme
  ];
}
