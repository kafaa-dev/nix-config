{ config, pkgs, ... }:

{
  programs.fish = {
    enable = true;

    shellAliases = {
      ls = "eza";
    };

    plugins = [
      {
        name = "artisan";
        src = pkgs.fetchFromGitHub {
          owner = "adriaanzon";
          repo = "fish-artisan-completion";
          rev = "8e8d726b3862fcb972abb652fb8c1a9fb9207a64";
          sha256 = "1vjyv42q6slgspw4hjnvi9bmn6pagiq6gn5zp0r9fi4fwmb91cpq";
        };
      }
    ];
  };
}
