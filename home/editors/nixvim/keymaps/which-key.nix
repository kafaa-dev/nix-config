{ config, pkgs, ... }:

{
  keymaps = [
    {
      action = "<cmd>WhichKey <CR>";
      key = "<leader>wK";
      mode = "n";
      options = {
        desc = "whichkey all keymaps";
      };
    }

    {
      action.__raw = ''
        function()
          vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
        end
      '';
      key = "<leader>wk";
      mode = "n";
      options = {
        desc = "whichkey query lookup";
      };
    }
  ];
}
