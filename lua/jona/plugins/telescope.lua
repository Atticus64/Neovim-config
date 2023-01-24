return {

	'nvim-telescope/telescope.nvim',
	dependencies = {
		{ { 'nvim-lua/plenary.nvim' } }
	},

	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", },
		{ "<leader>pf", "<cmd>Telescope git_files<cr>", },
		{ "<leader>fg", ":Telescope live_grep<CR>", },
		{ "<leader>fd", ":Telescope diagnostics<CR>", },
		{ "<leader>fb", ":Telescope buffers<CR>" },
		{ "<leader>fh", ":Telescope help_tags<CR>" },
	},

	--local builtin = require('telescope.builtin')
	--vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	--vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
	--vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
	--vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
}
