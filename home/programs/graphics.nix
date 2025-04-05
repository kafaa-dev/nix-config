{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gimp
    krita
    inkscape
    aseprite

    d2 # diagrams
  ];
}
