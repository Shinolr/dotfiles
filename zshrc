# Custom tmux aliases
alias tl="tmux ls"
alias ta="tmux a"
alias vim="nvim"

# xxenv
eval "$(rbenv init -)"
eval "$(pyenv init -)"

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

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    rupa/z \
    zsh-users/zsh-autosuggestions \
    zdharma/fast-syntax-highlighting

zinit snippet OMZL::clipboard.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::git.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZL::directories.zsh
zinit snippet OMZP::git/git.plugin.zsh
zinit light $HOME/Workspace/dotfiles/themes

### End of Zinit's installer chunk
