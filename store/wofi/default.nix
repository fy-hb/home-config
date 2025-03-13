{pkgs, lib, ...}:
{
  programs.wofi = {
    enable = true;
    settings = {
      mode="drun";
      allow_images="true";
      image_size=40;
      term="kitty";
      insensitive="true";
      location="center";
      no_actions=true;
      prompt="Search";
    };
  };
}
