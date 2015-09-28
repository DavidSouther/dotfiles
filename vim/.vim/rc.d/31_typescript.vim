set rtp+=~/.vim/bundle/typescript-vim
autocmd FileType typescript nmap <buffer> <Leader>t: <C-u>echo tsuquyoml#hint()<CR>
autocmd FileType typescript setlocal completeopt+=menu,preview
