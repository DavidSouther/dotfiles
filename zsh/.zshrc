zstyle ':completion:*' completer _complete
zstyle ':completion:*' squeeze-slashes true

path+=~/.zfunc
autoload -Uz compinit
# Cache the completion dump: the full security audit + dump rebuild costs ~0.2s.
# If a dump modified within the last day exists, load it with -C (skip the audit);
# otherwise run the full compinit, which regenerates the dump.
_zdump_fresh=( ${ZDOTDIR:-$HOME}/.zcompdump(Nmh-24) )
if (( $#_zdump_fresh )); then
  compinit -C
else
  compinit
fi
unset _zdump_fresh

export HISTFILE=~/.histfile
export HISTSIZE=999999999
export SAVEHIST=999999999
export HISTCONTROL=ignoreboth
export HISTIGNORE=bg:fg:pwd:cd:ls:which
setopt appendhistory sharehistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v

export CLICOLOR=xterm-color

bindkey -M vicmd '?' history-incremental-search-backward

[ -f ~/.profile ] && . ~/.profile

hash -r
