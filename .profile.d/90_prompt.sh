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
%88>..>%{%F{red}%}%m%b%f%k%9(v. . %{%F{blue}%}%(?.[.%20(?.[%U.%S[))%7v%(?.].%20(?.%u].]%s))%b%f%k )%{%F{default}%}%8~%b%f%k%<<%8v%73(l. . %{%F{default}%}%D%b%f%k)%81(l.. %{%F{red}%}%@%b%f%k)%9(v.
%{%F{blue}%}%(?.[.%20(?.[%U.%S[))%7v%(?.].%20(?.%u].]%s))%b%f%k.)
%# '
