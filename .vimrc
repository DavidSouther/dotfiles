set nocompatible
filetype off

" Look in ~/.vim/rc.d for configuration.
for rcfile in split(globpath("~/.vim/rc.d", "*.vim"), '\n')
    execute('source '.rcfile)
endfor
