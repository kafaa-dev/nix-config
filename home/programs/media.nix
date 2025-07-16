{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # media players
    vlc

    # audio editing + recording
    audacity

    # cli tools
    ffmpeg-full

    # webcam capture
    snapshot
  ];

  # video recording + live streaming
  programs.obs-studio.enable = true;

  # media player
  programs.mpv = {
    enable = true;
  };
}
