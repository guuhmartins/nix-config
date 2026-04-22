{ pkgs, ... }:
{
  programs.steam.enable = true;
  environment.systemPackages = with pkgs; [
    gamemode
    mangohud
    mgba
  ];
}
