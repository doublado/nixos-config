{ config, pkgs, ... }:

{
  sops = {
    age.keyFile = "${config.home.homeDirectory}/.config/sops/age/keys.txt";
    defaultSopsFile = ../../../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";
    
    secrets = {
      "git-email" = {};
    };

    templates."gitconfig".content = ''
      [user]
        name = Doublado
        email = ${config.sops.placeholder."git-email"}
      
      [init]
        defaultBranch = main
      
      # Add any other git config you want here
    '';
    templates."gitconfig".path = "${config.home.homeDirectory}/.gitconfig";
  };

  # Disable the programs.git module since we're managing .gitconfig with sops templates
  programs.git.enable = true;
}
