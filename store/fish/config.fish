clear
set -U fish_greeting


if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

if not string match -q -- "$HOME/.local/bin" $PATH
  set -gx PATH "$HOME/.local/bin" $PATH
end
