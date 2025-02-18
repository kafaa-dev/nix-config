{ config, pkgs, ... }:

{
  plugins.treesitter.enable = true;

  plugins.treesitter.settings = {
    auto_install = false;
    highlight.enable = true;
    indent.enable = true;
  };

  plugins.treesitter.grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
    bash
    c
    cmake
    css
    git_config
    git_rebase
    gitattributes
    gitcommit
    gitignore
    go
    gomod
    gosum
    gotmpl
    html
    javascript
    jsdoc
    json
    jsonc
    lua
    luadoc
    make
    markdown
    nix
    php
    phpdoc
    tsx
    typescript
    vim
    vimdoc
    yaml
    zig
  ];
}