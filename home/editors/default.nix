{ config, pkgs, ... }:

{
  imports = [
    ./vscode
    ./nixvim
  ];

  home.packages = with pkgs; [
    windsurf
  ];
}
