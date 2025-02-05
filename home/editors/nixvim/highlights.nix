{ config, pkgs, ... }:

{
  highlightOverride = {
    TrailingWhitespaces = {
      bg = "#ff0000";
    };
  };

  match = {
    TrailingWhitespaces = "\\s\\+$";
  };
}
