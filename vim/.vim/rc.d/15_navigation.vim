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
