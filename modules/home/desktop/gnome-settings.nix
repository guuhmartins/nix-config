{ lib, ... }:
{
  dconf.settings = {
    "org/gnome/mutter" = {
      center-new-windows = true;
      edge-tiling = true;
    };
    "org/gnome/shell/extensions/forge" = {
      tiling-mode-enabled = true;
      window-gap-size = 8;
      window-gap-hidden-on-single = false;
    };
    "org/gnome/shell/extensions/dash-to-dock" = {
      dock-position = "BOTTOM";
      extend-height = false;
      dock-fixed = false;
      dash-max-icon-size = 48;
      custom-theme-shrink = true;
    };
  };
}
