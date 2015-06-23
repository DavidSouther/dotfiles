" Indentation
set noexpandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
autocmd FileType coffee,jade setlocal tabstop=2|setlocal softtabstop=2|setlocal
set shiftwidth=2
" autocmd FileType html setlocal expandtab " Use spaces for html files
function! g:ChangeTabWidth(width)
    let &l:tabstop=a:width
    let &l:softtabstop=a:width
    let &l:shiftwidth=a:width
endfunc
nnoremap <Leader>2 :call g:ChangeTabWidth(2)<cr>
nnoremap <Leader>4 :call g:ChangeTabWidth(4)<cr>
