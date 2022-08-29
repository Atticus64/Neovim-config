vim.g.mapleader = " "

local options = vim.o

options.wrap = true
options.termguicolors = true
options.incsearch = true
options.nu = true
options.rnu = true
options.numberwidth = 1
options.clipboard = "unnamed"
options.nolist = true
options.noexpandtab = true
options.guicursor = block
options.cursorline = true
options.guifg= '#af00af'
options.tabstop = 2
options.encoding = 'utf-8'
options.showmatch = "true"
options.laststatus = 2
options.noshowmode = true

vim.cmd [[set mouse=a]]
vim.cmd [[colorscheme onedark]]
