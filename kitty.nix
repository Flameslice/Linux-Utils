{ config, pkgs, ... }:

{
  programs.kitty = {
    enable = true;
 
    font.name = "fira-code"; 
    font.package = pkgs.fira-code; 
  };
}
