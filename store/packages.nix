{ pkgs, ... } :
{
  home.packages = with pkgs; [
    nh lazygit lazydocker gradience nix-init nil nixfmt-rfc-style eza fzf ripgrep fd bat gnupg dust shell-gpt
  ];
}
