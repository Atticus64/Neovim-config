-- Functional wrapper for mapping custom keybindings
function Map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


-- exit insert mode
Map("i", ",,", "<esc>")
Map('n', '<Leader>ff', ':lua require"telescope.builtin".find_files({ hidden = true })<CR>',
	{ noremap = true, silent = true })

Map('n', "<leader>pf", "<cmd>Telescope git_files<cr>")
Map('n', "<leader>ct", "<cmd>Telescope colorscheme<cr>")
Map('n', "<leader>fg", ":Telescope live_grep<CR>") 
Map('n', "<leader>fd", ":Telescope diagnostics<CR>") 
Map('n', "<leader>fb", ":Telescope buffers<CR>")
Map('n', "<leader>fh", ":Telescope help_tags<CR>")

Map('n', "<leader>cf", ":lua config()<CR>")

Map('n', "<leader>ec", ":lua editSettings()<CR>")

Map('n', "<leader>ee", ":lua env()<CR>")

Map('n', "<leader>nj", ":LspStart tsserver<CR>")

Map('n', "<leader>cd", ":Lspsaga show_buf_diagnostics<CR>")

Map('n', "<C-s>", ":lua spaces()<CR>")

Map('n', "<C-t>", ":lua tabs()")

Map('n', "<leader>dj", ":LspStart denols<CR>")

Map('n', "<C-i>", ":BufferLineCycleNext<CR>")
Map('n', "<C-o>", ":BufferLineCyclePrev<CR>")

-- exit virtual mode
Map("v", ",,", "<esc>")

Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")

Map("n", "<leader>nt", ":NeoTreeRevealToggle<CR>")
-- close file
Map("n", "<Leader>q", ":q<CR>")

-- exit terminal
Map("t", "<C-k>", "<C-\\><C-n>")

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

Map("n", "-", "11k")
Map("n", "m", "10j")
Map("n", "<Leader>Y", ":%y+<CR>")
Map("n", "Y", "y$")
Map("n", "<leader>g", "$")
Map("n", "<leader>a", "^")
Map('n', '<leader>th', ':botright new <Bar> :terminal<CR>')
Map('n', '<leader>ts', ':botright vnew <Bar> :terminal<CR>')
