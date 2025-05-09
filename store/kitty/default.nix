{pkgs, lib, ...}:
{
  programs.kitty = {
    enable = true;
    package = pkgs.runCommand "dummy" {} "mkdir -p $out";
    font = {
      package = pkgs.nerd-fonts.jetbrains-mono;
      name = "JetBrainsMonoNL Nerd Font";
      size = 12;
    };
    settings = {
      window_padding_width = 7;
      confirm_os_window_close = 0;
      hide_window_decorations = "titlebar-only";
      tab_bar_edge = "top";
      tab_bar_style = "powerline";
      tab_powerline_style = "slanted";

      # colors

      # The basic colors
      foreground = "#E2E0EC";
      background = "#191a24";
      selection_foreground = "#D9E0EE";
      selection_background = "#575268";

      # Transparent Background
      background_opacity = 1;

      # Cursor colors
      cursor = "#F5E0DC";
      cursor_text_color = "#1E1E2E";

      # URL underline color when hovering with mouse
      url_color = "#F5E0DC";

      # kitty window border colors
      active_border_color = "#C9CBFF";
      inactive_border_color = "#575268";
      bell_border_color = "#FAE3B0";

      # OS Window titlebar colors
      wayland_titlebar_color = "system";
      macos_titlebar_color = "system";

      #: Tab bar colors
      active_tab_foreground = "#F5C2E7";
      active_tab_background = "#575268";
      inactive_tab_foreground = "#D9E0EE";
      inactive_tab_background = "#1E1E2E";
      tab_bar_background = "#161320";

      # Colors for marks (marked text in the terminal)

      mark1_foreground = "#1E1E2E";
      mark1_background = "#96CDFB";
      mark2_foreground = "#1E1E2E";
      mark2_background = "#F5C2E7";
      mark3_foreground = "#1E1E2E";
      mark3_background = "#B5E8E0";

      #: The 16 terminal colors

      #: black
      color0 = "#15161e";
      color8 = "#414868";

      #: red
      color1 = "#e77d8f";
      color9 = "#e77d8f";

      #: green
      color2 = "#a8cd76";
      color10 = "#a8cd76";

      #: yellow
      color3 = "#d9b172";
      color11 = "#d9b172";

      #: blue
      color4 = "#82a1f1";
      color12 = "#82a1f1";

      #: magenta
      color5 = "#b69bf1";
      color13 = "#b69bf1";

      #: cyan
      color6 = "#90cdfa";
      color14 = "#90cdfa";

      #: white
      color7 = "#aab1d3";
      color15 = "#aab1d3";
    };
  };
}
