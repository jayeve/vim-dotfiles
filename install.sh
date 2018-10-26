#!/bin/bash

# set up .vim directory
rm -rf ~/.vim
mkdir -p ~/.vim/autoload
mkdir -p ~/.vim/temp_dirs/undodir

# move vim configs into runtime path
cp vim-configs/my_configs.vim ~/.vim/
cp vim-configs/plugin_configs.vim ~/.vim/

# set up vimrc
cp vim-configs/vimrc ~/.vimrc

vim +PlugInstall +qall
