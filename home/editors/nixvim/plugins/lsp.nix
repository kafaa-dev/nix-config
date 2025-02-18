{ config, pkgs, ... }:

{
  # show function signature when you type
  plugins.lsp-signature.enable = true;

  plugins.lsp = {
    enable = true;

    servers = {
      # shell scripting
      bashls.enable = true;

      # web development
      html.enable = true;
      cssls.enable = true;
      ts_ls.enable = true;

      # json
      jsonls.enable = true;

      # lua
      lua_ls.enable = true;

      # nix
      nixd.enable = true;

      # go
      gopls.enable = true;

      # php
      intelephense.enable = true;
      intelephense.package = null;
    };
  };
}
