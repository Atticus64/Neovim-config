return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		{ { 'nvim-lua/plenary.nvim' } }
	},
	lazy = false,
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", },
		{ "<leader>pf", "<cmd>Telescope git_files<cr>", },
		{ "<leader>fg", ":Telescope live_grep<CR>", },
		{ "<leader>fd", ":Telescope diagnostics<CR>", },
		{ "<leader>fb", ":Telescope buffers<CR>" },
		{ "<leader>fh", ":Telescope help_tags<CR>" },
	},
}
