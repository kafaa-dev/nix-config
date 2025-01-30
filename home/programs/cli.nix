{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    xclip
  ];

  programs.bat.enable = true;

  programs.eza.enable = true;

  programs.ripgrep.enable = true;

  programs.zoxide.enable = true;

  programs.gitui.enable = true;
}
