-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Deno
vim.keymap.set("n", "<space>dr", function()
	vim.lsp.codelens.refresh();
	vim.lsp.codelens.run()
end)

vim.keymap.set("n", "<Leader>pv", vim.cmd.Ex)
-- exit insert mode
map("i", ",,", "<esc>")

-- exit virtual mode
map("v", ",,", "<esc>")

-- close file
map("n", "<Leader>q", ":q<CR>")

-- save file
map("n", "<Leader>w", ":w<CR>")

-- exit without saving
map("n", "<Leader>e", ":q!<CR>")

-- open terminal
map("n", "<Leader>ot", ":term<CR>")

-- next tab
map("n", "<Leader>d", ":tabNext<CR>")

-- open tab edit
map("n", "<leader>te", ":tabedit ")


-- Dashboard shortcuts
map("n", "<leader>ch", ":Telescope command_history")
map("n", "<leader>fo", ":Telescope oldfiles<CR>")
map("n", "<leader>ct", ":Telescope colorscheme<CR>")
map("n", "<leader>td", ":Telescope diagnostics<CR>")
map("n", "<leader>fd", ":edit ~/.config/nvim/<CR>")


-- Hop shortcuts

map("n", "<Leader>s", ":HopAnywhere<CR>")
map("n", "<Leader>sl", ":HopLine<CR>")


-- toggle comment
map("n", "<leader>c<Leader>", ":CommentToggle<CR>")
map("v", "<leader>c<Leader>", ":CommentToggle<CR>")

-- custom
map("n", "-", "10k")
map("n", "m", "10j")
map("n", "<Leader>Y", ":%y+<CR>")
map("n", "Y", "y$")
map("n", "<leader>g", "$")
map("n", "<leader>a", "^")
map('n', '<leader>th', ':botright new <Bar> :terminal<CR>')
map('n', '<leader>ts', ':botright vnew <Bar> :terminal<CR>')

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")

-- NvimTree
map("n", "<leader>nt", ":NvimTreeToggle<CR>")


-- Tmux Navigator
map("n", "<C-h>", ":lua require('tmux').move_left()<CR>")
map("n", "<C-l>", ":lua require('tmux').move_right()<CR>")
map("n", "<C-k>", ":lua require('tmux').move_bottom()<CR>")
map("n", "<C-j>", ":lua require('tmux').move_top()<CR>")

-- barbar shortcuts
map('n', '<A-,>', ':BufferPrevious<CR>')
map('n', '<A-.>', ':BufferNext<CR>')
-- Re-order to previous/next
map('n', '<A-<>', ':BufferMovePrevious<CR>')
map('n', '<A->>', ':BufferMoveNext<CR>')
-- Goto buffer in position...
map('n', '<A-1>', ':BufferGoto 1<CR>')
map('n', '<A-2>', ':BufferGoto 2<CR>')
map('n', '<A-3>', ':BufferGoto 3<CR>')
map('n', '<A-4>', ':BufferGoto 4<CR>')
map('n', '<A-5>', ':BufferGoto 5<CR>')
map('n', '<A-6>', ':BufferGoto 6<CR>')
map('n', '<A-7>', ':BufferGoto 7<CR>')
map('n', '<A-8>', ':BufferGoto 8<CR>')
map('n', '<A-9>', ':BufferGoto 9<CR>')
map('n', '<A-0>', ':BufferLast<CR>')
-- Pin/unpin buffer
map('n', '<A-p>', ':BufferPin<CR>')
-- Close buffer
map('n', '<A-c>', ':BufferClose<CR>')
map('n', '<C-p>', ':Telescope git_files<CR>')
-- Sort automatically by...
map('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>')
map('n', '<leader>bd', ':BufferOrderByDirectory<CR>')
map('n', '<leader>bl', ':BufferOrderByLanguage<CR>')
map('n', '<leader>bw', ':BufferOrderByWindowNumber<CR>')

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
