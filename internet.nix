{ pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    vivaldi
    vivaldi-ffmpeg-codecs
    discord
    transmission-gtk
  ];
}
