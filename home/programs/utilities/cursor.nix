{ config, pkgs, ... }:

{
  home.pointerCursor = {
    name = "banana";
    package = pkgs.banana-cursor;
    size = 24;
    gtk.enable = true;
    x11.enable = true;
  };
}
