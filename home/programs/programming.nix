{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    nixd
    nixfmt-rfc-style

    gcc
    clang-tools
    gnumake

    zig

    go

    php83
    php83Packages.composer
    intelephense

    nodejs_22
    pnpm
  ];

  # programming languages
  programs.bun = {
    enable = true;
    package = (
      pkgs.bun.overrideAttrs rec {
        version = "1.2.0";
        passthru.sources."x86_64-linux" = pkgs.fetchurl {
          url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64-baseline.zip";
          hash = "sha256-L76ihYOsWLvMgeY1zjUp0tw9N8RjuItrGUEz/sngO+4=";
        };
        src = passthru.sources."x86_64-linux";
      }
    );
  };
}
