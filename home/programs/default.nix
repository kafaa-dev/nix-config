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
    affine-bin
    anytype
    obsidian

    # office suite
    libreoffice

    # archive-related tools
    kiwix
    qbittorrent
    unzip

    # sync files and directories to and from cloud storage
    rclone

    # client-side encryption for files stored in cloud storage
    cryptomator

    # offline translation
    python312Packages.argostranslate
    python312Packages.sacremoses
    python312Packages.libretranslate
  ];
}
