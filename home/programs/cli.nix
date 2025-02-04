{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    xclip
  ];

  programs.bat.enable = true;

  programs.eza.enable = true;

  programs.ripgrep.enable = true;

  programs.zoxide.enable = true;

  programs.gitui.enable = true;

  programs.tmux = {
    enable = true;
    baseIndex = 1;
    mouse = true;
    prefix = "C-Space";
    plugins = with pkgs; [
      tmuxPlugins.sensible
    ];
    extraConfig = ''
      # Use Alt-arrow keys without prefix key to switch panes
      bind -n M-Left select-pane -L
      bind -n M-Right select-pane -R
      bind -n M-Up select-pane -U
      bind -n M-Down select-pane -D
    '';
  };
}
