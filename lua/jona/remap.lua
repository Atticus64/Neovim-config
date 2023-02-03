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

Map('n', "<leader>cf", ":lua config()<CR>")

Map('n', "<leader>nj", ":LspStart tsserver<CR>")

Map('n', "<leader>dj", ":LspStart denols<CR>")

-- exit virtual mode
Map("v", ",,", "<esc>")

Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")

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
