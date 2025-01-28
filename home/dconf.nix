{ config, pkgs, ... }:

{
  dconf.settings = {
    # Cinnamon
    "org/cinnamon" = {
      "favorite-apps" = [
        "cinnamon-settings.desktop"
        "org.gnome.Terminal.desktop"
        "nemo.desktop"
      ];
    };

    "org/cinnamon/desktop/applications/terminal" = {
      exec = "ghostty";
    };
  };
}
