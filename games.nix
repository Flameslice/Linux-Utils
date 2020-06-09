{ pkgs, ... }:

{
  home.packages = with pkgs; [
    steam
    steam-run
    discord
    multimc
    dwarf-fortress-packages.dwarf-fortress-full
    retroarch
  ];
}
