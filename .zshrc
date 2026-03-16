# zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

zstyle ':omz:update' mode disabled

plugins=(git zsh-autosuggestions)

source "$ZSH/oh-my-zsh.sh"

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

export PATH="/Users/hossein/.local/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Setup ZSH Auto suggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Set up fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# export FZF_DEFAULT_COMMAND='fd --type f'

eval "$(zoxide init zsh)"
alias cd=z
alias cl=clear
alias sudo='sudo '
alias vim=nvim
alias vi=nvim
alias nix-rebuild='darwin-rebuild switch --flake /etc/nix-darwin#m2pro'

# Setup direnv
eval "$(direnv hook zsh)"

# zprof

# pnpm
export PNPM_HOME="/Users/hossein/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/hossein/.dart-cli-completion/zsh-config.zsh ]] && . /Users/hossein/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

