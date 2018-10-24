set rtp +=~/.vim
set rtp +=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'kien/ctrlp.vim'                                 " fuzzy-finder
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'terryma/vim-multiple-cursors'                   " Sublime-like multiple cursors
Plugin 'godlygeek/tabular'                              " Tabularize for nice formatting
Plugin 'MarcWeber/vim-addon-manager-known-repositories' " random shit
Plugin 'junegunn/goyo.vim'                              " distraction free mode :Goyo [width]
Plugin 'scrooloose/nerdtree'
Plugin 'jremmen/vim-ripgrep'                            " simply better than Grep
Plugin 'jlanzarotta/bufexplorer'                        " Bufexplorer
Plugin 'itchyny/lightline.vim'                          " status line
Plugin 'tomtom/tlib_vim'                                " needed for vim-snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'                   " needed for vim-snipmate
Plugin 'garbas/vim-snipmate'                            " engine for the snippts because ultisnips didn't work
Plugin 'honza/vim-snippets'                             " code snippets
" Plugin 'YankRing.vim'
" Plugin 'Valloric/YouCompleteMe'

call vundle#end()

source ~/.vim/plugin_configs.vim " mappings/settings specific to the above plugins
source ~/.vim/my_configs.vim     " all my configs
