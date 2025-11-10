/opt/homebrew/bin/brew shellenv | source

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# if test -f /Users/hosseinjafari/miniconda/bin/conda
#     eval /Users/hosseinjafari/miniconda/bin/conda "shell.fish" "hook" $argv | source
# else
#     if test -f "/Users/hosseinjafari/miniconda/etc/fish/conf.d/conda.fish"
#         . "/Users/hosseinjafari/miniconda/etc/fish/conf.d/conda.fish"
#     else
#         set -x PATH "/Users/hosseinjafari/miniconda/bin" $PATH
#     end
# end
# # <<< conda initialize <<<

# My aliases
alias cd='z'
alias vim='nvim'
alias vi='nvim'
alias e='nvim'
alias k='kubectl'
alias icat="kitten icat"
alias cat='bat'

# Claude code configuration
# Enable Vertex AI integration
export CLAUDE_CODE_USE_VERTEX=1
export CLOUD_ML_REGION=global #europe-west1
export ANTHROPIC_VERTEX_PROJECT_ID=st-claude-dev-5cf7

starship init fish | source
zoxide init fish | source
direnv hook fish | source

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hosseinjafari/google-cloud-sdk/path.fish.inc' ]; . '/Users/hosseinjafari/google-cloud-sdk/path.fish.inc'; end

# Add krew to PATH
set -gx PATH $PATH $HOME/.krew/bin

export EDITOR=nvim
export VISUAL=nvim
export KUBE_EDITOR=nvim

# Add kubernetes autocomplete
kubectl completion fish | source


# For Aider
# export OPENAI_API_BASE=https://api.githubcopilot.com
# export OPENAI_API_KEY=


# pnpm
export PNPM_HOME="/Users/hosseinjafari/Library/pnpm"
set -gx PATH $PATH $PNPM_HOME


# #>>> conda initialize >>>
#  # !! Contents within this block are managed by 'conda init' !!
#  eval /Users/hosseinjafari/miniconda/bin/conda "shell.fish" "hook" $argv | source
#  # <<< conda initialize <<<
