export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda-mod"

plugins=(git z fast-syntax-highlighting zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

alias tl="tmux ls"
alias ta="tmux a"
alias vim="nvim"
alias vi="nvim"
alias sed="gsed"
alias cat="bat"
alias rm="trash"

# xxenv
eval "$(rbenv init -)"
eval "$(pyenv init -)"

