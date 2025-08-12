{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./cli.nix
    ./media.nix
    ./graphics.nix
    ./programming.nix
    ./input-method.nix
    ./web-browsers.nix
    ./communication.nix
  ];

  # packages
  home.packages = with pkgs; [
    bitwarden-desktop
    authenticator

    # clipboard manager
    copyq

    # flashcards
    anki

    # note-taking apps
    anytype
    obsidian

    # todo list and time tracking
    super-productivity

    # office suites
    libreoffice
    onlyoffice-desktopeditors

    # archive-related tools
    kiwix
    qbittorrent
    unzip

    # sync files and directories to and from cloud storage
    rclone

    # clock application (includes world clocks, alarms, a stopwatch, and timers)
    gnome-clocks

    # RSS reader
    newsflash

    # e-book management
    calibre
  ];
}
