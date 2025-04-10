{ ... }:

{
  home.sessionVariables = {
    EDITOR = "nvim";
    ICPC_FONT = "WenQuanYi Micro Hei";
    QT_SELECT = 5;
    QT_AUTO_SCREEN_SCALE_FACTOR = 1;
    #LD_LIBRARY_PATH = "$LD_LIBRARY_PATH:/run/opengl-driver/lib";
    #MESA_D3D12_DEFAULT_ADAPTER_NAME = "Nvidia";
    #WAYLAND_DISPLAY = "wayland-0";
    #XDG_SESSION_TYPE = "wayland";

    FZF_DEFAULT_COMMAND = "fd -H -I -E '{.astro,.git,.kube,.idea,.vscode,.sass-cache,node_modules,build,.vscode-server,.virtualenvs,target}' --type f --strip-cwd-prefix";
    FZF_DEFAULT_OPTS = "--height 40% --layout=reverse --color=bg+:,bg:,gutter:-1,spinner:#f5e0dc,hl:#f38ba8 --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8";

#     TERM = "wezterm";
#     DISPLAY = ":0";
#     DIRENV_LOG_FORMAT = ""; # close direnv log
#     FLAKE = "/home/parsifa1/nixos/";
#     PNPM_HOME = "/home/parsifa1/.local/share/pnpm";
#     PATH = "$PATH:$HOME/.cargo/bin:/usr/lib/wsl/lib:/bin";
  };
}
