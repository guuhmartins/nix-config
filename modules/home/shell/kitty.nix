{ pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    themeFile = "Catppuccin-Mocha";
    font.name = "JetBrainsMono Nerd Font";
  };
}
