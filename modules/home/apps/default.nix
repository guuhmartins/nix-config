{ pkgs, ... }:
{
  home.packages = with pkgs; [
    discord
    blackbox
    spotify
    libreoffice
    # Vamos instalar o Figma e SKLauncher via Flatpak depois para evitar erros de build
  ];
}
