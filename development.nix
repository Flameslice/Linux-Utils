{ pkgs, ... }:

{
  home.packages = with pkgs; [
    jdk8
    jetbrains.idea-community
    git
    python3
  ];
}
