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
    kdeApplications.spectacle
    wineWowPackages.staging
    protontricks
  ];

  nixpkgs.config.permittedInsecurePackages = [ "p7zip-16.02" ];
}
