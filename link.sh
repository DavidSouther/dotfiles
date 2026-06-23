#!/bin/bash

[ -d /opt/homebrew/bin ] || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
[ -x /opt/homebrew/bin/brew ] || eval "$(/opt/homebrew/bin/brew shellenv)"

brew bundle

stow -t $HOME -R claude git fish sh ssh vim zsh

chsh -s fish "$USER"

git clone https://github.com/VundleVim/Vundle.vim.git \
  ~/.vim/bundle/Vundle.vim >/dev/null 2>&1

vim +PluginInstall +qall

if [[ ! -f ~/.ssh/id_ed25519.pub ]] ; then
  echo "⚠️ Missing ~/.ssh/id_ed25519.pub"
fi
