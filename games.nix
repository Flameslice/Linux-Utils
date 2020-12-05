{ pkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
    steam
    steam-run
    multimc
    retroarch
  ];
  nixpkgs.config.retroarch = {
    enableMGBA = true;
  };
}
