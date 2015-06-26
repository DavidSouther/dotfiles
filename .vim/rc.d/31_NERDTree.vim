let g:NERDTreeWinSize=40

" Open NERDTree automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close NERDTree when it's the only buffer left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERDTree Shortcuts
nnoremap <C-g> :NERDTreeToggle<CR>
nnoremap <Leader>g :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>
