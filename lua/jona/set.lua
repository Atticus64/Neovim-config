vim.g.astro_typescript = 'enable'
vim.g.astro_stylus = 'enable'

local options = vim.o

options.wrap = true
options.termguicolors = true
options.incsearch = true
options.nu = true
options.rnu = true
options.numberwidth = 1
options.clipboard = "unnamed"
options.guicursor = ""
options.cursorline = true
options.shiftwidth = 2
options.tabstop = 2
options.encoding = 'utf-8'
options.laststatus = 2
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

function config()
	vim.cmd.edit('~/.config/nvim')
end

vim.cmd.set('mouse=a')
-- local ok = pcall(vim.cmd.colorscheme, 'ulip')
-- if not ok then
vim.cmd.colorscheme('catppuccin-macchiato')
-- end
vim.cmd.set('noexpandtab')
vim.cmd.set('nolist')
vim.cmd.set('noshowmode')
vim.cmd.set('showmatch')
