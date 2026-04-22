{ pkgs, ... }:
{
  programs.steam.enable = true;
  environment.systemPackages = with pkgs; [
    pkgs.gamemode
    pkgs.mangohud
    pkgs.mgba
  ];
}
