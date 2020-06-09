{ lib, config, pkgs, ... }:

let
  home-manager = builtins.fetchTarball {
    url = "https://github.com/rycee/home-manager/archive/master.tar.gz";
  };
in {
  imports = [
    ./hardware-configuration.nix
    "${home-manager}/nixos"
  ];

  users.users.kristian = {
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };
  home-manager.users.kristian = import /home/kristian/.config/nixpkgs/home.nix;

}
