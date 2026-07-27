if status is-interactive
    # Commands to run in interactive sessions can go here
    zoxide init fish | source
    direnv hook fish | source
    fzf --fish | source

    alias vim="nvim-kickstart"
    alias cl="clear"
    alias cd="z"
    alias nix-rebuild='darwin-rebuild switch --flake /etc/nix-darwin#m2pro'
    alias zellij="zellij -l welcome"
    alias nvim-kickstart='NVIM_APPNAME="nvim-kickstart" nvim'
    alias k='kubectl'
    alias c='claude'
end

set -gx EDITOR nvim
fish_add_path /Users/hossein/.local/bin

# pnpm
set -gx PNPM_HOME "/Users/hossein/Library/pnpm"
if not string match -q -- "*$PNPM_HOME*" "$PATH"
    set -gx PATH "$PNPM_HOME" $PATH
end

starship init fish | source

set -gx ANTHROPIC_API_KEY 'superbock4life'
set -gx PATH $PATH $HOME/go/bin
set -gx GPG_TTY (tty)
export PATH="$HOME/.local/bin:$PATH"
