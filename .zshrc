zmodload zsh/zprof

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

zstyle ':omz:update' mode disabled


plugins=(git zsh-autosuggestions)

source "$ZSH/oh-my-zsh.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# Setup zoxide
eval "$(zoxide init zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# My aliases
alias cd=z
alias vim=nvim
alias vi=nvim
alias e=nvim
alias k=kubectl
alias icat="kitten icat"
alias cat=bat
alias cl=clear
alias cls=clear
alias u="uv run"

# Setup direnv 
eval "$(direnv hook zsh)"
export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"

# Postgres 
export LDFLAGS="-L/opt/homebrew/opt/postgresql@15/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@15/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@15/lib/pkgconfig"

# setting up NVM is slow for some reason
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.local/bin/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hosseinjafari/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/hosseinjafari/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/hosseinjafari/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/hosseinjafari/google-cloud-sdk/completion.zsh.inc'; fi

# zprof

# Claude code configuration
# Enable Vertex AI integration
export CLAUDE_CODE_USE_VERTEX=1
export CLOUD_ML_REGION=global #europe-west1
export ANTHROPIC_VERTEX_PROJECT_ID=st-claude-dev-5cf7

# # Optional: Disable prompt caching if needed
# export DISABLE_PROMPT_CACHING=1

# Optional: Override regions for specific models
# export VERTEX_REGION_CLAUDE_3_5_HAIKU=us-central1
# export VERTEX_REGION_CLAUDE_3_5_SONNET=us-east5
# export VERTEX_REGION_CLAUDE_3_7_SONNET=us-east5
# export VERTEX_REGION_CLAUDE_4_0_OPUS=europe-west4
# # export VERTEX_REGION_CLAUDE_4_0_SONNET=us-east5
# export VERTEX_REGION_CLAUDE_4_1_OPUS=europe-west4
#

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim
export KUBE_EDITOR=nvim


# Add kubernetes autocomplete
source <(kubectl completion zsh)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/hosseinjafari/miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/hosseinjafari/miniconda/etc/profile.d/conda.sh" ]; then
#         . "/Users/hosseinjafari/miniconda/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/hosseinjafari/miniconda/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


fpath+=~/.zfunc; autoload -Uz compinit; compinit
