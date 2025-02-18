{ config, pkgs, ... }:

{
  imports = [
    ./general.nix
    ./line-numbers.nix
    ./buffers.nix
    ./nvim-tree.nix
    ./comment.nix
    ./telescope.nix
    ./which-key.nix
  ];
}
