{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    multimc
    minecraft
    retroarch
    steam
    steam-run
  ];
}
