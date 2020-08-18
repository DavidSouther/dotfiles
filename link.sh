#!/bin/bash

sudo apt install stow

stow -t $HOME -R vim zsh vscode
