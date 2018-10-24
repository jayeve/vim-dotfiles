#!/bin/bash

# set up .vim directory
rm -rf ~/.vim
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# move vim configs into runtime path
cp vim-configs/my_configs.vim ~/.vim/
cp vim-configs/plugin_configs.vim ~/.vim/

cp vim-configs/vimrc ~/.vimrc

vim +PluginInstall +qall
