{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    gimp
    krita
    inkscape

    d2 # diagrams

    imagemagick
  ];
}
