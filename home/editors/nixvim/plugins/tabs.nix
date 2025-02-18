{ config, pkgs, ... }:

{
  plugins.barbar.enable = true;

  plugins.barbar.settings = {
    # set the filetypes which barbar will offset itself for
    sidebar_filetypes = {
      NvimTree = true;
    };
  };
}
