{ config, pkgs, ... }:

let
  configPath = "${config.home.homeDirectory}/Repos/kafaa-dev/nix-config/home/editors/neovim/nvim";
in {
  xdg.configFile."nvim".source = config.lib.file.mkOutOfStoreSymlink configPath;

  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };
}
