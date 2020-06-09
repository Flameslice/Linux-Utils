{ pkgs, ...}:

{
  home.packages = with pkgs; [
    jdk
    jetbrains.idea-community
    godot
    qt5.full
  ];
}
