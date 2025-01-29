{ config, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;

    enableFishIntegration = true;

    settings = {
      theme = "vscode-dark";

      keybind = [
        "ctrl+shift+o=unbind"
        "ctrl+shift+%=new_split:right"

        "ctrl+shift+e=unbind"
        "ctrl+shift+\"=new_split:down"
      ];
    };

    themes = {
      vscode-dark = {
        palette = [
          "0=#000000"
          "1=#cd3131"
          "2=#0dbc79"
          "3=#e5e510"
          "4=#2472c8"
          "5=#bc3fbc"
          "6=#11a8cd"
          "7=#e5e5e5"
          "8=#666666"
          "9=#f14c4c"
          "10=#23d18b"
          "11=#f5f543"
          "12=#3b8eea"
          "13=#d670d6"
          "14=#29b8db"
          "15=#e5e5e5"
        ];
        background = "181818";
        foreground = "cccccc";
        cursor-color = "cccccc";
        cursor-text = "cccccc";
        selection-background = "3a3d41"; # #3a3d41 or #264f78
        selection-foreground = "cccccc";
      };
    };
  };
}
