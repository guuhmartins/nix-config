{ pkgs, ... }:

{
  services.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
  services.desktopManager.gnome.enable = true;

  environment.systemPackages = with pkgs; [
    gnome-extensions-cli # Útil para gerenciar extensões
    gnome-tweaks
    colloid-gtk-theme
    colloid-icon-theme
    # O cursor no Nixpkgs geralmente tem nomes diferentes, vamos usar o padrão por enquanto
    # e você pode adicionar o MacTahoe via Home Manager depois
    apple-cursor 
    
    # Extensões
    gnomeExtensions.forge
    gnomeExtensions.dash-to-dock
    gnomeExtensions.blur-my-shell
  ];

  services.flatpak.enable = true;
}
