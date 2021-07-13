
{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;

    history = {
      save = 20000;
      ignoreDups = true;
      expireDuplicatesFirst = true;
    };
    
    oh-my-zsh = { 
      enable = true;
      plugins = [ "thefuck" ];
      theme = "pygmalion";
      #theme = "fishy";
    };

    shellAliases = {
      nrs = "sudo nixos-rebuild switch";
      nru = "sudo nixos-rebuild switch --upgrade";
      hcfg = "cd ~/.config/nixpkgs/";
      scfg = "cd /etc/nixos/"; 
      ncg = "sudo nix-collect-garbage";
      ncgd = "sudo nix-collect-garbage -d";
    };
  };
  
  home.packages = with pkgs; [ thefuck ];
}
