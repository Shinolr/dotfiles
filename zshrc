export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lambda-mod"

plugins=(git z fast-syntax-highlighting zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

alias tl="tmux ls"
alias ta="tmux a"
alias vim="nvim"
alias vi="nvim"

# xxenv
eval "$(rbenv init -)"
eval "$(pyenv init -)"
eval "$(nodenv init -)"

