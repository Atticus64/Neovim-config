vim.g.astro_typescript = 'enable'
vim.g.astro_stylus = 'enable'

local options = vim.o

options.wrap = true
options.termguicolors = true
options.incsearch = true
options.hlsearch = false
options.nu = true
options.rnu = true
options.numberwidth = 1
options.clipboard = "unnamed"
options.guicursor = ""
options.cursorline = true
options.shiftwidth = 2
options.encoding = 'utf-8'
options.laststatus = 2
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
options.tabstop = 2
options.shiftwidth = 2

function config()
	vim.cmd.edit('~/.onfig/nvim')
end

function tabs()
	options.tabstop = 4
	options.shiftwidth = 4
end

function editSettings()
	vim.cmd.edit('src/settings.yml')
end

function env()
	vim.cmd.edit('.env')
end

function space()
	options.tabstop = 2
	options.shiftwidth = 2
end

vim.cmd.set('mouse=a')
local ok = pcall(vim.cmd.colorscheme, 'catppuccin-macchiato')
if not ok then
	vim.cmd.colorscheme('tokyonight-storm')
end
vim.cmd.set('noexpandtab')
vim.cmd.set('nolist')
vim.cmd.set('noshowmode')
vim.cmd.set('showmatch')
