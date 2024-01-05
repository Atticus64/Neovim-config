return {
	"glepnir/lspsaga.nvim",
	branch = "main",
	config = function()
		require('lspsaga').setup({})
	end,
	keys = {
		{ "<leader>sd", ":Lspsaga show_buf_diagnostics<cr>", desc = "diagnostics" },
		{ "<leader>sl", ":Lspsaga show_line_diagnostics<cr>", desc = "diagnostics line" },
		{ "<leader>ca", ":Lspsaga code_action<cr>", desc = "code action lspsaga" },
		{ "<leader>rn", ":Lspsaga rename<cr>", desc = "rename thing" },
	},
}
