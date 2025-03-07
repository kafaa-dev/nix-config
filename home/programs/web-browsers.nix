{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    google-chrome
    brave
  ];

  programs.firefox.enable = true;
}
