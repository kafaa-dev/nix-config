{
  config,
  pkgs,
  inputs,
  ...
}:

{
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    colorscheme = "vscode";
    colorschemes.vscode.enable = true;

    clipboard.register = "unnamedplus";

    imports = [
      ./keymaps
      ./opts.nix
      ./highlights.nix
      ./diagnostics.nix
      ./plugins
    ];
  };
}
