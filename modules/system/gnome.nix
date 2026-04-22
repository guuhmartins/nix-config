{ pkgs, ... }:
{
  services.xserver = {
    enable = true;
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
    desktopManager.gnome.enable = true;
  };
  environment.systemPackages = with pkgs; [
    gnomeExtensions.forge
    gnomeExtensions.dash-to-dock
    gnomeExtensions.blur-my-shell
    gnome-tweaks
    colloid-gtk-theme 
    colloid-icon-theme 
    mactahoe-cursor;
  services.flatpak.enable = true;
  ];
}
