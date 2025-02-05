{ config, pkgs, ... }:

{
  keymaps = [
    {
      action = "<cmd>set nu!<CR>";
      key = "<leader>n";
      mode = "n";
      options = {
        desc = "toggle line number";
      };
    }

    {
      action = "<cmd>set rnu!<CR>";
      key = "<leader>rn";
      mode = "n";
      options = {
        desc = "toggle relative number";
      };
    }
  ];
}
