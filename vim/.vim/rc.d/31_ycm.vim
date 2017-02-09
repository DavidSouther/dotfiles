" Turn off Syntastic gutter markers
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_echo_current_diagnostic = 1

let g:EclimCompletionMethod = 'omnifunc'

" Highlight errors and warnings with red/magenta undercurl
hi SpellBad term=none ctermbg=none cterm=undercurl ctermfg=Red gui=undercurl guisp=Red
hi SpellCap term=none ctermbg=none cterm=undercurl ctermfg=Magenta gui=undercurl guisp=Magenta

" Use C-] to jump to definition
nmap <C-]> :YcmCompleter GoToDefinition<CR>
