{ config, pkgs, ... }:

{
  keymaps = [
    {
      action = "<cmd>NvimTreeFocus<CR>";
      key = "<leader>e";
      mode = "n";
      options = {
        desc = "nvimtree focus window";
      };
    }
  ];
}
