  _   _        __      ___
" | \ | |       \ \    / (_)
" |  \| | ___  __\ \  / / _ _ __ ___
" | . ` |/ _ \/ _ \ \/ / | | '_ ` _ \
" | |\  |  __/ (_) \  /  | | | | | | |
" |_| \_|\___|\___/ \/   |_|_| |_| |_|

if &compatible | set nocompatible | endif

set incsearch
set nu
set mouse=a
set rnu
set numberwidth=1
set clipboard=unnamed
syntax enable
set nolist
set showcmd
set noexpandtab
set ruler
set guicursor=a:block
set termguicolors
hi CursorLineNr guifg=#af00af
set cursorline
set cursorlineopt=number
set tabstop=4
set encoding=utf-8
set showmatch
set laststatus=2
set noshowmode

so ~/AppData/Local/nvim/maps.vim
so ~/AppData/Local/nvim/plugins.vim
so ~/AppData/Local/nvim/dashboard.vim
so ~/AppData/Local/nvim/automatics.vim
so ~/AppData/Local/nvim/config.lua

"colorscheme dracula
colorscheme gruvbox
"colorscheme nord
"colorscheme oceanic_material
"Dashboard config
let g:dashboard_default_executive ='fzf'
"NerdTree config 
let NERDTreeQuitOnOpen=1
"coc server
let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]
"identline config
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"Ultisnip tab
let g:UtilSnipsExpandTrigger="<tab>"
"emmet config
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_leader_key=','
let g:user_emmet_settings={
\ 'javascript': {
\ 'extends':'jsx' 
\ }
\ }

"Prettier config
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <leader>d :Prettier<cr>

silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
let $FZF_DEFAULT_OPTS='--layout=reverse --color dark'
"let $FZF_DEFAULT_OPTS='--layout=reverse --color bw'
"Vim bracket colors
let g:rainbow_active = 1
let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH
let g:indentLine_fileTypeExclude = ['dashboard']