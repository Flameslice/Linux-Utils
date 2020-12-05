{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    liberation_ttf
    fira
    fira-code
    materia-theme
    roboto
    ubuntu_font_family
    qogir-icon-theme
    papirus-icon-theme
  ];
}
