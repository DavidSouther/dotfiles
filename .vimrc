set number
set expandtab ts=4 sw=4 ai
set listchars=tab:>-
set list
set nolist
set linebreak
set modeline
set ls=2
set cc=81
set tw=80

nmap j gj
nmap k gk
syntax on

" Vimdiff. Use ,2 for left ,3 for middle ,4 for right
map <silent> <leader>2 :diffget 2<CR> :diffupdate<CR>
map <silent> <leader>3 :diffget 3<CR> :diffupdate<CR>
map <silent> <leader>4 :diffget 4<CR> :diffupdate<CR>

set nocompatible
filetype off

" Look in ~/.vim/rc.d for configuration.
for rcfile in split(globpath("~/.vim/rc.d", "*.vim"), '\n')
    execute('source '.rcfile)
endfor
