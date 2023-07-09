return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require 'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "css" },

			sync_install = false,

			auto_install = true,

			highlight = {
				-- `false` will disable the whole extension
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end,
}
