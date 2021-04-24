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

plugins=(git z)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

alias ohmyzsh="mate ~/.oh-my-zsh"

# Custom tmux aliases
alias tl="tmux ls"

# export PATH="/usr/local/sbin:$PATH"

# rbenv
eval "$(rbenv init -)"
