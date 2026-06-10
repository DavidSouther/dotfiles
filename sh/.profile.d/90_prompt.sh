#autoload -U promptinit
#promptinit
#prompt bart

function precmd {
    # Set the terminal-tab title to the current directory's basename.
    # %1~ is prompt expansion (no subprocess); the old form forked basename+pwd.
    print -Pn "\e]1;%1~\a"
}

PROMPT='
%{%F{blue}%}\
%(?.[.%20(?.[%U.%S[))\
%7v\
%(?.].%20(?.%u].]%s))\
%b%f%k \
%{%F{default}%}%8~%b%f%k\

%# '
