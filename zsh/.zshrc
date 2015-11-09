# The following lines were added by compinstall

zstyle ':completion:*' completer _complete #_ignored #_correct _approximate
#zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' '' '' 'l:|=* r:|=*'
#zstyle ':completion:*' max-errors 3
#zstyle ':completion:*' prompt 'Corrections for %e errors:'
zstyle ':completion:*' squeeze-slashes true

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=30000
export HISTCONTROL=ignoredups
setopt appendhistory sharehistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
export CLICOLOR=xterm-color

# Git completion
source ~/.zsh-git-prompt

bindkey -M vicmd '?' history-incremental-search-backward

[ -f ~/.profile ] && . ~/.profile


