{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
    withPython3 = false;
    withRuby = false;
    plugins = with pkgs.vimPlugins; [
      nvim-treesitter
      nvim-lspconfig
      catppuccin-nvim
    ];
  };
}
