{ pkgs, inputs, ... }:
{
  imports = [
    ./hardware.nix
    ./hardware-configuration.nix
    ./gnome.nix
    ./games.nix
  ];
  networking.hostName = "nixos";
  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "pt_BR.UTF-8";
  users.users.guuh = {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
