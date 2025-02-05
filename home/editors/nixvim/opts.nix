{ config, pkgs, ... }:

{
  opts = {
    number = true;
    relativenumber = true;
    shiftwidth = 2;
  };

  globals = {
    mapleader = " ";
  };
}
