return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		{ 'kyazdani42/nvim-web-devicons', opt = true }
	},
	options = {
		icons_enabled = true,
		theme = 'auto',
		component_separators = { left = '', right = '' },
		section_separators = { left = '', right = '' },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
	config = function()
		require('lualine').setup({
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch', 'diff', 'diagnostics' },
				lualine_c = { 'filename' },
				lualine_x = { 'fileformat', 'filetype', 'tabnine' },
				lualine_y = { 'progress' },
				lualine_z = { 'location' }
			},

		})
	end,
}

