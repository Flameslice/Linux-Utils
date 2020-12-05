{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    vlc
    ghostwriter
    kdenlive
    audacity
    reaper
  ];
  
  programs = {
    obs-studio = {
      enable = true;
      plugins = with pkgs; [ obs-wlrobs obs-v4l2sink ];
    };
  }; 
}
