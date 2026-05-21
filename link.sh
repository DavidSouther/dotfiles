#!/bin/bash

[ -d /opt/homebrew/bin ] || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
[ -x /opt/homebrew/bin/brew ] || eval "$(/opt/homebrew/bin/brew shellenv)"

brew install stow

stow -t $HOME -R sh vim zsh vscode
mkdir -p $HOME/.claude
stow -t $HOME/.claude claude

git clone https://github.com/VundleVim/Vundle.vim.git \
  ~/.vim/bundle/Vundle.vim >/dev/null 2>&1

vim +PluginInstall +qall

