""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => itchyny status line
""""""""""""""""""""""""""""""
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }


""""""""""""""""""""""""""""""
" => Ripgrep plugin
""""""""""""""""""""""""""""""
map <leader>r :Rg<Space>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-p>'
map <leader>j :CtrlP<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


""""""""""""""""""""""""""""""
" => ultisnips
""""""""""""""""""""""""""""""

" user Ctrl-j instead of <tab> so to not conflict with deoplete
let g:UltiSnipsExpandTrigger="<C-e>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


""""""""""""""""""""""""""""""
" => ensime
""""""""""""""""""""""""""""""

" go to declaration
au FileType scala nnoremap <leader>df :EnDeclaration<CR>

" typechecking
autocmd BufWritePost *.scala silent :EnTypeCheck
nnoremap <leader>t :EnType<CR>

""""""""""""""""""""""""""""""
" => deoplete
""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

" cycle through deoplete suggestions with tab, backwards with shift+tab
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"

" set up where deoplete sources completion suggestions
let g:deoplete#sources={}
let g:deoplete#sources._=['buffer', 'member', 'tag', 'file', 'omni', 'ultisnips']
let g:deoplete#omni#input_patterns={}
let g:deoplete#omni#input_patterns.scala='[^. *\t]\.\w*'
