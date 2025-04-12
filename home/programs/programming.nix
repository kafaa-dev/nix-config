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

    dbeaver-bin # sql client
  ];

  # programming languages
  programs.bun = {
    enable = true;
    package = (
      pkgs.bun.overrideAttrs rec {
        version = "1.2.5";
        passthru.sources."x86_64-linux" = pkgs.fetchurl {
          url = "https://github.com/oven-sh/bun/releases/download/bun-v${version}/bun-linux-x64-baseline.zip";
          hash = "sha256-DmHnkysLY7dBYCjaS+hHlWLha4gLOo4Htu1FfW0DIuM=";
        };
        src = passthru.sources."x86_64-linux";
      }
    );
  };
}
