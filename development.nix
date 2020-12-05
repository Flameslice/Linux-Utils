{ pkgs, ...}:

{
  home.packages = with pkgs; [
    jdk
    jetbrains.idea-community
    godot
    python38
    python38Packages.selenium
  ];
}
