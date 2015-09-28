#autoload -U promptinit
#promptinit
#prompt bart

function precmd {
    if [ git status > /dev/null 2>&1 ] ; then
        cd "$(git rev-parse --show-toplevel)"
    fi
    echo -ne "\e]1;$(basename $(pwd))\a"
}

PROMPT='
%{%F{blue}%}\
%(?.[.%20(?.[%U.%S[))\
%7v\
%(?.].%20(?.%u].]%s))\
%b%f%k \
%{%F{default}%}%8~%b%f%k\

%# '
