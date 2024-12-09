{pkgs, lib, ...}: {
  programs.yazi = {
    enable = true;
    package = pkgs.yazi;
    enableFishIntegration = true;
    shellWrapperName = "y";
    settings = lib.importTOML ./yazi.toml;
    theme = lib.importTOML ./theme.toml;
    keymap = lib.importTOML ./keymap.toml;
    initLua = ./init.lua;
    plugins = {
#       folder-rules = ./. + "/plugins/folder-rules.yazi";
    };
  };
}
