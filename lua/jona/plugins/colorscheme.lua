return {
	{ 'Atticus64/infinity_train.nvim', },
	{ 'catppuccin/nvim', },
	{ 'rebelot/kanagawa.nvim', },
	{ 'sainnhe/everforest', },
	{ 'EdenEast/nightfox.nvim', },

	{
		'catppuccin/nvim',
		name = "catppuccin",
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd.colorscheme('catppuccin-macchiato')
			-- vim.cmd.colorscheme('everforest')
		end,
	},
}
