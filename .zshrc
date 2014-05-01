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
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
export CLICOLOR=xterm-color

# Git completion
source ~/.zsh-git-prompt

#autoload -U promptinit
#promptinit
#prompt bart

[[ -s ~/.nvm/nvm.sh ]] && . ~/.nvm/nvm.sh
nvm use default 2>&1 >/dev/null

PROMPT='
%88>..>%{%F{red}%}%m%b%f%k%9(v. . %{%F{blue}%}%(?.[.%20(?.[%U.%S[))%7v%(?.].%20(?.%u].]%s))%b%f%k )%{%F{default}%}%8~%b%f%k%<<%8v%73(l. . %{%F{default}%}%D%b%f%k)%81(l.. %{%F{red}%}%@%b%f%k)%9(v.
%{%F{blue}%}%(?.[.%20(?.[%U.%S[))%7v%(?.].%20(?.%u].]%s))%b%f%k.)
%# '

bindkey -M vicmd '?' history-incremental-search-backward

[ -f ~/.profile ] && . ~/.profile

# added by travis gem
source /home/southerd/.travis/travis.sh

# added by github-flow
export PATH="/home/southerd/.ghf/bin:$PATH"

