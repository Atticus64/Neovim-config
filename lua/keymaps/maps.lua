-- Functional wrapper for mapping custom keybindings
function Map(mode, lhs, rhs, opts)
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
Map("i", ",,", "<esc>")

-- exit virtual mode
Map("v", ",,", "<esc>")

-- close file
Map("n", "<Leader>q", ":q<CR>")


-- save file
Map("n", "<Leader>w", ":w<CR>")

-- exit without saving
Map("n", "<Leader>e", ":q!<CR>")

-- open terminal
Map("n", "<Leader>ot", ":term<CR>")

-- next tab
Map("n", "<Leader>d", ":tabNext<CR>")

-- open tab edit
Map("n", "<leader>te", ":tabedit ")


-- Dashboard shortcuts
Map("n", "<leader>ch", ":Telescope command_history")
Map("n", "<leader>fo", ":Telescope oldfiles<CR>")
Map("n", "<leader>ct", ":Telescope colorscheme<CR>")
Map("n", "<leader>td", ":Telescope diagnostics<CR>")
Map("n", "<leader>fd", ":edit ~/.config/nvim/<CR>")


-- Hop shortcuts

Map("n", "<Leader>s", ":HopAnywhere<CR>")
Map("n", "<Leader>sl", ":HopLine<CR>")


-- toggle comment
Map("n", "<leader>c<Leader>", ":CommentToggle<CR>")
Map("v", "<leader>c<Leader>", ":CommentToggle<CR>")

-- custom
Map("n", "-", "11k")
Map("n", "m", "10j")
Map("n", "<Leader>Y", ":%y+<CR>")
Map("n", "Y", "y$")
Map("n", "<leader>g", "$")
Map("n", "<leader>a", "^")
Map('n', '<leader>th', ':botright new <Bar> :terminal<CR>')
Map('n', '<leader>ts', ':botright vnew <Bar> :terminal<CR>')

-- Telescope
Map("n", "<leader>ff", ":Telescope find_files<CR>")
Map("n", "<leader>fg", ":Telescope live_grep<CR>")
Map("n", "<leader>fb", ":Telescope buffers<CR>")
Map("n", "<leader>fh", ":Telescope help_tags<CR>")

-- NvimTree
Map("n", "<leader>nt", ":NvimTreeToggle<CR>")


-- Tmux Navigator
Map("n", "<C-h>", ":lua require('tmux').move_left()<CR>")
Map("n", "<C-l>", ":lua require('tmux').move_right()<CR>")
Map("n", "<C-k>", ":lua require('tmux').move_bottom()<CR>")
Map("n", "<C-j>", ":lua require('tmux').move_top()<CR>")

-- barbar shortcuts
Map('n', '<A-,>', ':bprev<CR>')
Map('n', '<A-.>', ':bnext<CR>')
-- Re-order to previous/next
Map('n', '<A-<>', ':BufferMovePrevious<CR>')
Map('n', '<A->>', ':BufferMoveNext<CR>')
-- Goto buffer in position...
Map('n', '<A-1>', ':BufferGoto 1<CR>')
Map('n', '<A-2>', ':BufferGoto 2<CR>')
Map('n', '<A-3>', ':BufferGoto 3<CR>')
Map('n', '<A-4>', ':BufferGoto 4<CR>')
Map('n', '<A-5>', ':BufferGoto 5<CR>')
Map('n', '<A-6>', ':BufferGoto 6<CR>')
Map('n', '<A-7>', ':BufferGoto 7<CR>')
Map('n', '<A-8>', ':BufferGoto 8<CR>')
Map('n', '<A-9>', ':BufferGoto 9<CR>')
Map('n', '<A-0>', ':BufferLast<CR>')
-- Pin/unpin buffer
Map('n', '<A-p>', ':BufferPin<CR>')
-- Close buffer
Map('n', '<A-c>', ':BufferClose<CR>')
Map('n', '<C-p>', ':Telescope git_files<CR>')
-- Sort automatically by...
Map('n', '<leader>bb', ':BufferOrderByBufferNumber<CR>')
Map('n', '<leader>bd', ':BufferOrderByDirectory<CR>')
Map('n', '<leader>bl', ':BufferOrderByLanguage<CR>')
Map('n', '<leader>bw', ':BufferOrderByWindowNumber<CR>')

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
