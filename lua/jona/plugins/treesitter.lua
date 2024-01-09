return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		-- NOTE: additional parser
		{ "nushell/tree-sitter-nu" },
	},
	build = ':TSUpdate',
	config = function()
		require 'nvim-treesitter.configs'.setup {
			ensure_installed = { "c", "lua", "vim", "css", "org" },

			sync_install = false,

			auto_install = true,

			highlight = {
				-- `false` will disable the whole extension
				enable = true,
				disable = { 'org' },                -- Remove this to use TS highlighter for some of the highlights (Experimental)
				additional_vim_regex_highlighting = { 'org' }, -- Required since TS highlighter doesn't support all syntax features (conceal)

			},
		}
	end,
}
