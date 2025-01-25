{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    # media players
    vlc

    # cli tools
    ffmpeg-full
  ];
}
