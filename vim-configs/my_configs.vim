" make the screen pretty
syntax on
set noshowmode " no longer need to show INSERT as it's on the status bar
set relativenumber
set number
set t_Co=256 " lots of colors here
set laststatus=2
silent! colorscheme vividchalk
hi Search cterm=NONE ctermfg=black ctermbg=red

" search related
set hlsearch " highlight search
set incsearch
set ignorecase

" indentation logic
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set backspace=indent,eol,start

" excludes from fuzzy find
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*target*

" keep vim history after closing
set undofile
set noswapfile
set undodir=~/.vim/temp_dirs/undodir

"""""""""""""""""""""
" Trailing Whitespace
"""""""""""""""""""""
fun! CleanExtraSpace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  silent! %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfun

" Delete on save for some filetypes
if has("autocmd")
  autocmd BufWritePre *.txt,*.js,*.py,*.scala,*.yml,*.yaml,*.conf,*.rb :call CleanExtraSpace()
endif

" highlight it
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Update time
set updatetime=100


"""""""""""""""""""""
" custom key mappings
"""""""""""""""""""""
let mapleader = ","

" allow sourcing of vim without re-opening
map <leader>s :source ~/.vimrc<CR>

" map spacebar to search
map <Space> /

" remove highlights quickly
map ; :noh<CR>
