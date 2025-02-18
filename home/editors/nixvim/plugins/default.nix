{ config, pkgs, ... }:

{
  imports = [
    ./tabs.nix
    ./statusline.nix
    ./completion.nix
    ./treesitter.nix
    ./lsp.nix
    ./telescope.nix
  ];

  # web-devicons is used on:
  # - barbar.nvim
  # - lualine.nvim
  # - nvim-tree.lua
  plugins.web-devicons.enable = true;

  # show available keybindings as you type
  plugins.which-key.enable = true;

  # color highlighter
  plugins.colorizer.enable = true;

  # show indentation guides
  plugins.indent-blankline.enable = true;
  plugins.indent-blankline.settings.indent.char = "▏";

  # file explorer
  plugins.nvim-tree.enable = true;

  # git integration for buffers
  plugins.gitsigns.enable = true;

  # auto pairs
  plugins.nvim-autopairs.enable = true;
}
