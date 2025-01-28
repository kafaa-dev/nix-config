{ config, pkgs, ... }:

{
  dconf.settings = {
    # Cinnamon
    "org/cinnamon/desktop/applications/terminal" = {
      exec = "ghostty";
    };
  };
}
