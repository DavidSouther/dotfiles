filetype off


set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim' " Let Vundle manage itself.
Plugin 'scrooloose/nerdtree' " The tree file browser.
Plugin 'itchyny/lightline.vim' " Awesome bottom bar support.
Plugin 'leafgarland/typescript-vim' " Typescript syntax.
Plugin 'Shougo/vimproc.vim' " Dependency for below
Plugin 'Quramy/tsuquyomi' " Typescript completions.
"Plugin 'kein/ctrlp.vim' " Ctrl + P Fuzzy Finder
Plugin 'ap/vim-buftabline' " Treat buffers themselves as the tabline
"Plugin 'valloric/YouCompleteMe'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'tpope/vim-surround'
call vundle#end()

filetype plugin indent on

