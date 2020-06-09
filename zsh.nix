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
      plugins = [ "thefuck" ];
      theme = "pygmalion";
    };

    shellAliases = {
      nrs = "sudo nixos-rebuild switch";
      nru = "sudo nixos-rebuild switch --upgrade";
      hcfg = "cd ~/.config/nixpkgs/";
      scfg = "cd /etc/nixos/"; 
    };
  };
}
