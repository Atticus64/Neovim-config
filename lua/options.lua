vim.g.mapleader = " "

local options = vim.o

options.wrap = true
options.termguicolors = true
options.incsearch = true
options.nu = true
options.rnu = true
options.numberwidth = 1
options.clipboard = "unnamed"
options.guicursor = block
options.cursorline = true
options.shiftwidth= 2
options.tabstop = 2
options.encoding = 'utf-8'
options.laststatus = 2

vim.cmd [[set mouse=a]]
vim.cmd [[colorscheme onedark]]
vim.cmd [[set noexpandtab]]
vim.cmd [[set nolist]]
vim.cmd [[set noshowmode]]
vim.cmd [[set showmatch]]