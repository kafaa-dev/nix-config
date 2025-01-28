{ config, pkgs, ... }:

{
  dconf.settings = {
    # Cinnamon
    "org/cinnamon" = {
      favorite-apps = [
        "cinnamon-settings.desktop"
        "com.mitchellh.ghostty.desktop"
        "nemo.desktop"
      ];

      enabled-applets = [
        "panel1:left:0:menu@cinnamon.org:0"
        "panel1:left:1:separator@cinnamon.org:1"
        "panel1:left:2:grouped-window-list@cinnamon.org:2"
        "panel1:right:0:systray@cinnamon.org:3"
        "panel1:right:1:xapp-status@cinnamon.org:4"
        "panel1:right:2:notifications@cinnamon.org:5"
        "panel1:right:4:removable-drives@cinnamon.org:7"
        "panel1:right:5:keyboard@cinnamon.org:8"
        "panel1:right:6:favorites@cinnamon.org:9"
        "panel1:right:7:network@cinnamon.org:10"
        "panel1:right:8:sound@cinnamon.org:11"
        "panel1:right:9:power@cinnamon.org:12"
        "panel1:right:10:calendar@cinnamon.org:13"
        "panel1:right:11:cornerbar@cinnamon.org:14"
      ];
    };

    "org/cinnamon/theme" = {
      name = "Mint-Y-Dark-Blue";
    };

    "org/cinnamon/desktop/interface" = {
      gtk-theme = "Mint-Y-Blue";
      icon-theme = "Mint-Y-Blue";
      cursor-theme = "Bibata-Modern-Classic";
    };

    "org/cinnamon/desktop/applications/terminal" = {
      exec = "ghostty";
    };

    "org/cinnamon/desktop/peripherals/touchpad" = {
      disable-while-typing = false;
    };

    # GNOME
    "org/gnome/desktop/interface" = {
      gtk-theme = "Mint-Y-Blue";
      icon-theme = "Mint-Y-Blue";
    };
  };
}
