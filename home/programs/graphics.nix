{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gimp
    aseprite
  ];
}
