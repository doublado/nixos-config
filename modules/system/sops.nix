{ config, pkgs, inputs, ... }:

{
  sops = {
    defaultSopsFile = ../../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";
    
    age = {
      keyFile = "${config.home.homeDirectory}/.config/sops/age/keys.txt";
      generateKey = true;
    };
  };

  environment.systemPackages = with pkgs; [
    sops
    age
  ];
}
