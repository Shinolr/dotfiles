# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/Formula/oh-my-zsh"

# ZSH_THEME="lambda-mod"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git z zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

source $ZSH/oh-my-zsh.sh

alias tl="tmux ls"
alias ta="tmux a"
alias vim="nvim"
alias vi="nvim"
alias sed="gsed"
alias cat="bat"
alias rm="trash"
alias ls="lsd"

# xxenv
eval "$(rbenv init -)"
eval "$(pyenv init -)"

export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
