{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jdk17
    python3
    nodejs_20
    mariadb
  ];
}
