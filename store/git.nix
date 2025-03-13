 {pkgs, ...}: {
  programs.git = {
    enable = true;
    package = pkgs.gitFull;
    extraConfig = {
      user.signingkey="58F0009E76DB637F";
      user.email="fyhb233@gmail.com";
      user.name="F. ICE";
      commit.gpgsign=true;
    };
  };
}

