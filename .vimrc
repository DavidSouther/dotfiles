set nocompatible
filetype off

" Basics
set backspace=indent,eol,start
set colorcolumn=81 " Right ruler. Should be textwidth + 1
set cursorline
set laststatus=2 " show a status line even when only one window is shown.
set linebreak
set list
set nowrap
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

" leader
let mapleader = ","

" Window Navigation Shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab Navigation Shortcuts
set hidden " Allow background buffers.
nnoremap <leader>h <C-W><C-L>:bprev<CR>
nnoremap <leader>l <C-W><C-L>:bnext<CR>
nnoremap <leader>d <C-W><C-L>:bd<CR>:bnext<CR>
