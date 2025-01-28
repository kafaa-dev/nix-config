{ config, pkgs, ... }:

{
  dconf.settings = {
    # Cinnamon
    "org/cinnamon" = {
      "favorite-apps" = [
        "cinnamon-settings.desktop"
        "com.mitchellh.ghostty.desktop"
        "nemo.desktop"
      ];
    };

    "org/cinnamon/desktop/applications/terminal" = {
      exec = "ghostty";
    };
  };
}
