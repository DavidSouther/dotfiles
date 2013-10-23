# The following lines were added by compinstall

zstyle ':completion:*' completer _complete #_ignored #_correct _approximate
#zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' '' '' 'l:|=* r:|=*'
#zstyle ':completion:*' max-errors 3
#zstyle ':completion:*' prompt 'Corrections for %e errors:'
zstyle ':completion:*' squeeze-slashes true
#zstyle :compinstall filename '/home/southerd/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=30000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# Git completion
source /usr/share/doc/git-1.8.3.1/contrib/completion/git-completion.zsh
source /home/southerd/.zsh-git-prompt

#autoload -U promptinit
#promptinit
#prompt bart

[[ -s /home/southerd/.nvm/nvm.sh ]] && . /home/southerd/.nvm/nvm.sh # This loads NVM
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

