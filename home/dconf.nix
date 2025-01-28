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

    "org/cinnamon/theme" = {
      "name" = "Mint-Y-Dark-Blue";
    };

    "org/cinnamon/desktop/interface" = {
      "gtk-theme" = "Mint-Y-Blue";
      "icon-theme" = "Mint-Y-Blue";
      "cursor-theme" = "Bibata-Modern-Classic";
    };

    "org/cinnamon/desktop/applications/terminal" = {
      exec = "ghostty";
    };

    # GNOME
    "org/gnome/desktop/interface" = {
      "gtk-theme" = "Mint-Y-Blue";
      "icon-theme" = "Mint-Y-Blue";
    };
  };
}
