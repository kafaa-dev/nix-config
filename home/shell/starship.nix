{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    settings = {
      battery = {
        disabled = true;
      };
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[✗](bold red)";
      };
    };
  };
}
