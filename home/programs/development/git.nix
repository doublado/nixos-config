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
    '';
    templates."gitconfig".path = "${config.home.homeDirectory}/.gitconfig";
  };

  programs.git.enable = true;
}
