{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # media players
    vlc

    # cli tools
    ffmpeg-full
  ];

  # video recording + live streaming
  programs.obs-studio.enable = true;
}
