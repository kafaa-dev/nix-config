{ config, pkgs, ... }:

{
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
  };
}
