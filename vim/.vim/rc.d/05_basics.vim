set backspace=indent,eol,start
set colorcolumn=81 " Right ruler. Should be textwidth + 1
set cursorline
set laststatus=2 " show a status line even when only one window is shown.
set linebreak
set list
"set listchars=tab:▸\ ,trail:💩
set modeline
set nolist
set number
set textwidth=80 " Wrap at 80 chars.

if has('vim_starting')
  if &compatible
    set nocompatible
  endif
endif

nmap j gj
nmap k gk
syntax on

