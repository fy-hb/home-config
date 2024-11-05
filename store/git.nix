 {pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "fy-hb";
    userEmail = "frost_ice@qq.com";
    package = pkgs.gitFull;
  };
}

