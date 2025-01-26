{ config, pkgs, ... }:

{
  programs.ghostty = {
    enable = true;

    enableFishIntegration = true;

    settings = {
      keybind = [
        "ctrl+shift+o=unbind"
        "ctrl+shift+%=new_split:right"

        "ctrl+shift+e=unbind"
        "ctrl+shift+\"=new_split:down"
      ];
    };
  };
}
