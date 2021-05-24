# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/Formula/oh-my-zsh"
# export JENKINS_HOME="$HOME/Formula/jenkins"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="lambda-mod"

plugins=(git z vi-mode)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

alias ohmyzsh="mate ~/.oh-my-zsh"

# Custom tmux aliases
alias tl="tmux ls"

# export PATH="/usr/local/sbin:$PATH"

# rbenv
eval "$(rbenv init -)"
# pyenv
eval "$(pyenv init -)"

# Xcode losing syntax highlight


kill_sourcekit() {
    ps aux | grep SourceKit | grep -v grep | awk '{print $2}' | xargs kill -9
}

### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
### End of Zinit's installer chunk

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
