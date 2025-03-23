{ config, pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "Kafaa Billahi Syahida";
    userEmail = "kafaa.developer@gmail.com";
    signing.key = "F0B89D340D1AE705"; # 2025 March - NixOS
    signing.signByDefault = true;
    extraConfig = {
      init.defaultBranch = "main";
    };
  };

  programs.gh.enable = true;

  programs.gpg.enable = true;

  services.gpg-agent.enable = true;
  services.gpg-agent.pinentryPackage = pkgs.pinentry-gnome3;
  services.gpg-agent.defaultCacheTtl = 7200; # 2 hours
  services.gpg-agent.maxCacheTtl = 57600; # 16 hours
}
