#!/bin/bash

# set up .vim directory
rm -rf ~/.vim
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# move vim configs into runtime path
mv .vim/* ~/.vim/
mv .vimrc ~/
