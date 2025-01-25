{ config, pkgs, ... }:

{
  imports = [
    ./fish.nix
    ./starship.nix
  ];
}
