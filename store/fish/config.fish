if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

set -U fish_greeting

set GPG_TTY "$(tty)"

# if not string match -q -- $PNPM_HOME $PATH
#   set -gx PATH "$PNPM_HOME" $PATH
# end
#
# if not string match -q -- "$HOME/.local/bin" $PATH
#   set -gx PATH "$HOME/.local/bin" $PATH
# end
