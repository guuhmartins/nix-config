{ pkgs, ... }:
{
  home.packages = with pkgs; [
    discord
    spotify
    libreoffice
    figma-linux
  ];
}
