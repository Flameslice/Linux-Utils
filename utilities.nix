{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    unzip
    dolphin
    ark
    gvfs
    gotop
    commonsCompress
    unar
    screen
    gnome3.nautilus
    gnome3.evince
    kdeApplications.spectacle
    wineWowPackages.staging
    protontricks
    synergy
    unrar
    geeqie
    imagemagick
    pandoc
    piper
    libratbag
    libreoffice
    linuxPackages.xpadneo
    htop
    okular
    samba
    kdeApplications.dolphin-plugins
    kdeApplications.kdenetwork-filesharing
    nfs-utils
    appimage-run
  ];
  

  nixpkgs.config.permittedInsecurePackages = [ "p7zip-16.02" ];
}
