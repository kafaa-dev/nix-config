{ config, pkgs, ... }:

{
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

  services.gpg-agent.enable = true;
  services.gpg-agent.pinentryPackage = pkgs.pinentry-gnome3;
}
