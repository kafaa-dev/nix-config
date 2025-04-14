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
    authenticator

    # clipboard manager
    copyq

    # note-taking apps
    obsidian

    # office suites
    libreoffice
    onlyoffice-desktopeditors

    # archive-related tools
    kiwix
    qbittorrent
    unzip

    # sync files and directories to and from cloud storage
    rclone

    # client-side encryption for files stored in cloud storage
    cryptomator

    # clock application (includes world clocks, alarms, a stopwatch, and timers)
    gnome-clocks

    # offline translation
    python312Packages.argostranslate
    python312Packages.sacremoses
    python312Packages.libretranslate
  ];
}
