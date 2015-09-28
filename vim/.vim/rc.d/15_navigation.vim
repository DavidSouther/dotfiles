" Window Navigation Shortcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab Navigation Shortcuts
set hidden " Allow background buffers.
"nnoremap <C-S-H> :bnext<CR>
"nnoremap <C-S-L> :bprev<CR>
nnoremap <leader><C-i> :bprev<CR>
nnoremap <leader>h :bprev<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>d :bd<CR>
