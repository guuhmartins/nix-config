{ lib, ... }:
{
  dconf.settings = {
    # Aqui o Home Manager vai carregar tudo o que ajustamos manualmente
    "org/gnome/mutter" = {
      center-new-windows = true;
      edge-tiling = true;
    };
  };
  
  # Comando para importar o dump que acabamos de fazer
  home.file.".config/gnome-settings.ini".source = ./gnome-settings.ini;
}
