{ config, pkgs, ... }:

{
  keymaps = [
    {
      action = "<cmd>Telescope live_grep<CR>";
      key = "<leader>fw";
      mode = "n";
      options = {
        desc = "telescope live grep";
      };
    }

    {
      action = "<cmd>Telescope buffers<CR>";
      key = "<leader>fb";
      mode = "n";
      options = {
        desc = "telescope find buffers";
      };
    }

    {
      action = "<cmd>Telescope help_tags<CR>";
      key = "<leader>fh";
      mode = "n";
      options = {
        desc = "telescope help page";
      };
    }

    {
      action = "<cmd>Telescope marks<CR>";
      key = "<leader>ma";
      mode = "n";
      options = {
        desc = "telescope find marks";
      };
    }

    {
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>fo";
      mode = "n";
      options = {
        desc = "telescope find oldfiles";
      };
    }

    {
      action = "<cmd>Telescope current_buffer_fuzzy_find<CR>";
      key = "<leader>fz";
      mode = "n";
      options = {
        desc = "telescope find in current buffer";
      };
    }

    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>cm";
      mode = "n";
      options = {
        desc = "telescope git commits";
      };
    }

    {
      action = "<cmd>Telescope git_status<CR>";
      key = "<leader>gt";
      mode = "n";
      options = {
        desc = "telescope git status";
      };
    }

    {
      action = "<cmd>Telescope terms<CR>";
      key = "<leader>pt";
      mode = "n";
      options = {
        desc = "telescope pick hidden term";
      };
    }

    {
      action = "<cmd>Telescope find_files<CR>";
      key = "<leader>ff";
      mode = "n";
      options = {
        desc = "telescope find files";
      };
    }

    {
      action = "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>";
      key = "<leader>fa";
      mode = "n";
      options = {
        desc = "telescope find all files";
      };
    }
  ];
}
