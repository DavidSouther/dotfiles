#!/bin/bash

stow -t $HOME -R sh vim zsh vscode

git clone https://github.com/VundleVim/Vundle.vim.git \
  ~/.vim/bundle/Vundle.vim >/dev/null 2>&1

vim +PluginInstall +qall

