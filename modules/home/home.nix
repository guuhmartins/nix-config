{ pkgs, ... }:
{
  imports = [
    ./services/dunst 
    ./programs/fish
    ./desktop/gnome-settings.nix
    ./shell/kitty.nix
    ./dev-tools/vscode.nix
    ./dev-tools/languages.nix
    ./apps/default.nix
    ./tui/neovim/default.nix
  ];
  home.username = "guuh";
  home.homeDirectory = "/home/guuh";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
