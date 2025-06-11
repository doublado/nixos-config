{ config, pkgs, ... }:

{
  imports = [
    # Hardware
    ./hardware-configuration.nix

    # System
    ../../modules/system/auto-upgrade.nix
    ../../modules/system/bootloader.nix
    ../../modules/system/bun.nix
    ../../modules/system/desktop-env.nix
    ../../modules/system/fonts.nix
    ../../modules/system/locale.nix
    ../../modules/system/maintenance.nix
    ../../modules/system/networking.nix
    ../../modules/system/node.nix
    ../../modules/system/nvidia.nix
    ../../modules/system/sops.nix

    # Programs
    ../../modules/programs/steam.nix
  ];

  networking.hostName = "desktop";
  system.stateVersion = "25.05";

  users.users.nikjak = {
    isNormalUser = true;
    description = "nikjak";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}
