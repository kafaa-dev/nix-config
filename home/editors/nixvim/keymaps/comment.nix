{ config, pkgs, ... }:

{
  keymaps = [
    {
      action = "gcc";
      key = "<leader>/";
      mode = "n";
      options = {
        remap = true;
        desc = "toggle comment";
      };
    }

    {
      action = "gc";
      key = "<leader>/";
      mode = "v";
      options = {
        remap = true;
        desc = "toggle comment";
      };
    }
  ];
}
