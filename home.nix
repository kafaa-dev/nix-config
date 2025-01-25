{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "kafaa";
  home.homeDirectory = "/home/kafaa";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # packages
  home.packages = with pkgs; [
    bitwarden-desktop
  ];

  # shell
  programs.fish = {
    enable = true;
  };

  programs.starship = {
    enable = true;
    settings = {
      battery = {
        disabled = true;
      };
    };
  };

  # git
  programs.git = {
    enable = true;
    userName = "Kafaa Billahi Syahida";
    userEmail = "kafaa.id@proton.me";
    signing.key = "3A4F1BBD6EF9A6B9"; # 2025 - NixOS
    signing.signByDefault = true;
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  programs.gh.enable = true;

  programs.gpg.enable = true;
}
