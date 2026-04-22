{ pkgs, ... }:
{
  home.packages = with pkgs; [
    discord
    spotify
    libreoffice
    ptyxis # O substituto moderno e oficial do GNOME para o Blackbox
  ];
}
