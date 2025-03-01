{ config, pkgs, ... }:

{
  programs.wezterm = {
    enable = true;

    colorSchemes = {
      vscode-dark = {
        ansi = [
          "#000000"
          "#cd3131"
          "#0dbc79"
          "#e5e510"
          "#2472c8"
          "#bc3fbc"
          "#11a8cd"
          "#e5e5e5"
        ];
        brights = [
          "#666666"
          "#f14c4c"
          "#23d18b"
          "#f5f543"
          "#3b8eea"
          "#d670d6"
          "#29b8db"
          "#e5e5e5"
        ];
        background = "#181818";
        cursor_bg = "#cccccc";
        cursor_border = "#cccccc";
        cursor_fg = "#cccccc";
        foreground = "#cccccc";
        selection_bg = "#3a3d41"; # #3a3d41 or #264f78
        selection_fg = "#cccccc";
      };
    };

    extraConfig = ''
      -- Pull in the wezterm API
      local wezterm = require 'wezterm'

      -- This will hold the configuration.
      local config = wezterm.config_builder()

      -- This is where you actually apply your config choices

      -- For example, changing the color scheme:
      config.color_scheme = 'vscode-dark'

      -- and finally, return the configuration to wezterm
      return config
    '';
  };
}
