{ config, pkgs, ... }:

{
  imports = [
    # Communication
    ../../programs/communication/vesktop.nix

    # Development
    ../../programs/development/alacritty.nix
    ../../programs/development/code-cursor.nix
    ../../programs/development/fzf.nix
    ../../programs/development/git.nix
    ../../programs/development/lazygit.nix
    ../../programs/development/nvim.nix
    ../../programs/development/oh-my-posh.nix
    ../../programs/development/tmux.nix
    ../../programs/development/zoxide.nix
    ../../programs/development/zsh.nix

    # Games
    ../../programs/games/minecraft.nix

    # Media
    ../../programs/media/spotify.nix
    ../../programs/media/stremio.nix

    # Modeling
    ../../programs/modeling/bambu-studio.nix

    # Utilities
    ../../programs/utilities/cursor.nix
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
