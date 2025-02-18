{ config, pkgs, ... }:

{
  keymaps = [
    {
      action = "<cmd>BufferNext<CR>";
      key = "<tab>";
      mode = "n";
      options = {
        desc = "buffer goto next";
      };
    }

    {
      action = "<cmd>BufferPrev<CR>";
      key = "<S-tab>";
      mode = "n";
      options = {
        desc = "buffer goto prev";
      };
    }

    {
      action.__raw = ''
        function()
          if vim.bo.buftype == "" then
            vim.cmd("confirm BufferClose")
          else
            vim.cmd("confirm bdelete")
          end
        end
      '';
      key = "<leader>x";
      mode = "n";
      options = {
        desc = "buffer close";
      };
    }
  ];
}
