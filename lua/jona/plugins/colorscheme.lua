return {
	{ 'Atticus64/infinity_train.nvim', },
	{
		'rebelot/kanagawa.nvim',
	},
	{
		'uloco/bluloco.nvim',
  		dependencies = { 'rktjmp/lush.nvim' },
	},
	{ 'sainnhe/everforest', },
	{
		"dgox16/oldworld.nvim",
		lazy = false,
		priority = 1000,
	},
	{

		'catppuccin/nvim',
		name = "catppuccin",
	},
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()

			local schemes = {
				[1] = 'kanagawa',
				[2] = 'catppuccin',
			}

			for _, item in pairs(schemes) do
				require(item).setup({
				no_italic = true,
					commentStyle = { italic = false },
					keywordStyle = { italic = false },
				})
			end

			-- vim.cmd.colorscheme('catppuccin-macchiato')
			vim.cmd.colorscheme('bluloco')
			-- vim.cmd.colorscheme('kanagawa')
		end,
	},
}
