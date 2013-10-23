# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export EDITOR=vim

alias ls="ls --color --group-directories-first -X"

DING=/usr/share/sounds/gnome/default/alerts/glass.ogg
alias ding='play -V0 $DING >/dev/null 2>&1'
alias chime='while [ 1 ] ; do ding ; sleep 1 ; done'
alias get='curl -X GET -v'
alias post='curl -X POST -v'

export PS1='\[\e[1m\][\W$(__git_ps1 " (%s)")]\$\[\e[0m\] '

export PATH=/home/southerd/.ghf/bin:$PATH

[[ -s /home/southerd/.nvm/nvm.sh ]] && . /home/southerd/.nvm/nvm.sh # This loads NVM
nvm use default 2>&1 >/dev/null
. /usr/share/doc/git-1.8.3.1/contrib/completion/git-completion.bash
. /usr/share/doc/git-1.8.3.1/contrib/completion/git-prompt.sh

# added by travis gem
source /home/southerd/.travis/travis.sh
PATH=/home/southerd/.ghf/bin:$PATH
