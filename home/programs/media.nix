{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # media players
    vlc

    # video editing
    kdePackages.kdenlive

    # audio editing + recording
    audacity

    # cli tools
    ffmpeg-full
  ];

  # video recording + live streaming
  programs.obs-studio.enable = true;
}
