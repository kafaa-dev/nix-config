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
  ];
}
