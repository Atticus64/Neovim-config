return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
	popup_border_style = "rounded",
	follow_current_file = false,
	group_empty_dirs = false,
	hijack_netrw_behavior = "open_default",
	use_libuv_file_watcher = false,
	enable_git_status = true,
	enable_diagnostics = true,
	config = function()
		require("neo-tree").setup({
			window = {
				position = "right",
				width = 20,
			}
		})
	end,
}
