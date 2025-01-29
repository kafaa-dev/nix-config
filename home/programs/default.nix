{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./cli.nix
    ./media.nix
    ./graphics.nix
    ./programming.nix
    ./web-browsers.nix
    ./communication.nix
  ];

  # packages
  home.packages = with pkgs; [
    bitwarden-desktop

    # clipboard manager
    copyq

    # note-taking apps
    anytype
    obsidian

    # office suite
    libreoffice

    # archive-related tools
    kiwix
    qbittorrent
  ];
}
