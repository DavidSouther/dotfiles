# alias ls="ls --color --group-directories-first"
CLICOLOR=1
alias ls="ls --color=auto"
#alias ll="ls -l"
#alias la="ls -a"
#alias lla="ls -la"
alias gti="git"
alias npmisd="npm install --save-dev"
alias npmis="npm install --save"
alias killdebug="lsof -i TCP -n | grep 5858 | awk '{print $2}' | xargs kill"
alias node-debug="node-debug --web-port=8088"
alias diff="grc diff -ur"
alias lstcp="lsof -i TCP"
