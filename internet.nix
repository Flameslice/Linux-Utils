{ pkgs, ... }:

{
  home.packages = with pkgs; [
    deluge
    firefox-beta-bin
  ];
}  
