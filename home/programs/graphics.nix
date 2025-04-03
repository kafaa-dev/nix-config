{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gimp
    inkscape
    aseprite

    d2 # diagrams
  ];
}
