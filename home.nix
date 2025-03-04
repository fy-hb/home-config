{ config, pkgs, ... }:
{
  home = {
    username = "frost_ice";
    homeDirectory = "/home/frost_ice";
    stateVersion = "24.05";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  imports = map (d: ./store + d) (map (n: "/" + n) (with builtins; attrNames (readDir ./store)));
}
