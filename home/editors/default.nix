{ config, pkgs, ... }:

{
  imports = [
    ./vscode.nix
    ./neovim.nix
  ];
}
