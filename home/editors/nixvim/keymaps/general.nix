{ config, pkgs, ... }:

{
  keymaps = [
    {
      action = "<cmd>noh<CR>";
      key = "<Esc>";
      mode = "n";
      options = {
        desc = "general clear highlights";
      };
    }

    {
      action = "<cmd>w<CR>";
      key = "<C-s>";
      mode = "n";
      options = {
        desc = "general save file";
      };
    }

    {
      action = "<cmd>%y+<CR>";
      key = "<C-c>";
      mode = "n";
      options = {
        desc = "general copy whole file";
      };
    }

    {
      action.__raw = ''
        function()
          require("conform").format { lsp_fallback = true }
        end
      '';
      key = "<leader>fm";
      mode = "n";
      options = {
        desc = "general format file";
      };
    }
  ];
}
