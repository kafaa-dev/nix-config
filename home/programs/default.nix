{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./cli.nix
    ./media.nix
    ./graphics.nix
    ./programming.nix
    ./web-browsers.nix
  ];

  # packages
  home.packages = with pkgs; [
    bitwarden-desktop

    # note-taking apps
    anytype
    obsidian

    # office suite
    libreoffice

    # messaging apps
    telegram-desktop

    # archive-related tools
    kiwix
    qbittorrent
  ];
}
