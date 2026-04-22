{ pkgs, ... }:
{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting ""
    '';
    shellAliases = {
      nix-switch = "sudo nixos-rebuild switch --flake .#nixos";
      nix-clean = "sudo nix-collect-garbage -d";
    };
  };
}
