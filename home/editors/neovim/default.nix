{ config, pkgs, ... }:

{
  xdg.configFile."nvim".source = ./nvim;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
