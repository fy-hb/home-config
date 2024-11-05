{ config, pkgs, ... }:

{
  home = {
    username = "frost_ice";
    homeDirectory = "/home/frost_ice";
    stateVersion = "24.05";
  };

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    nh
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
#   home.file = {
#     # # Building this configuration will create a copy of 'dotfiles/screenrc' in
#     # # the Nix store. Activating the configuration will then make '~/.screenrc' a
#     # # symlink to the Nix store copy.
#     # ".screenrc".source = dotfiles/screenrc;
#
#     # # You can also set the file content immediately.
#     # ".gradle/gradle.properties".text = ''
#     #   org.gradle.console=verbose
#     #   org.gradle.daemon.idletimeout=3600000
#     # '';
#   };


  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  imports = map (d: ./store + d) (map (n: "/" + n) (with builtins; attrNames (readDir ./store)));
}
