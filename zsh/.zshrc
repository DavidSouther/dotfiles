zstyle ':completion:*' completer _complete
zstyle ':completion:*' squeeze-slashes true

autoload -Uz compinit
compinit

export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=30000
export HISTCONTROL=ignoredups
setopt appendhistory sharehistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v

export CLICOLOR=xterm-color

# Git completion
source ~/.zsh-git-prompt

bindkey -M vicmd '?' history-incremental-search-backward

[ -f ~/.profile ] && . ~/.profile
