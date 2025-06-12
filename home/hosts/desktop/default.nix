{ config, pkgs, ... }:

{
  imports = [
    # Communication
    ../../programs/communication/vesktop.nix

    # Development
    ../../programs/development/code-cursor.nix
    ../../programs/development/git.nix
    ../../programs/development/lazygit.nix
    ../../programs/development/nvim.nix

    # Media
    ../../programs/media/spotify.nix
    ../../programs/media/stremio.nix

    # Utilities
    ../../programs/utilities/firefox.nix
    ../../programs/utilities/kate.nix
    ../../programs/utilities/neofetch.nix
    ../../programs/utilities/streamdeck.nix
  ];

  home.username = "nikjak";
  home.homeDirectory = "/home/nikjak";
  home.stateVersion = "25.05";
  programs.home-manager.enable = true;
}
