{ config, pkgs, ... }:

{
  plugins.lualine.enable = true;

  plugins.lualine.settings = {
    extensions = [ "nvim-tree" ];
  };
}
