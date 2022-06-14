call plug#begin('~/.config/nvim/plugged')
"Themes
Plug 'arcticicestudio/nord-vim'
Plug 'glepnir/oceanic-material'
Plug 'tomasr/molokai'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'Rigellute/shades-of-purple.vim'
Plug 'joshdick/onedark.vim'
Plug 'tribela/vim-transparent'
let g:oceanic_material_transparent_background=1
let g:gruvbox_baby_transparent_mode = 1
let g:molokai_original = 1
let g:gruvbox_contrast_dark = "hard"
"Ide
Plug 'tpope/vim-repeat'
Plug 'junegunn/fzf',  { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mattn/emmet-vim'
Plug 'frazrepo/vim-rainbow'
Plug 'mhinz/vim-signify'
"Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"colors preview
Plug 'norcalli/nvim-colorizer.lua'
"DashBoard
Plug 'glepnir/dashboard-nvim'
"Typing
Plug 'chun-yang/auto-pairs'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Lualine
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'
"Treesitter 
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
