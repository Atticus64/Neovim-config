return   {
	'akinsho/toggleterm.nvim', 
	version = "*", 
	config = true,
	keys = {
		{ "<C-t>", ":ToggleTerm direction=horizontal<cr>" },
		{ "<C-s>", ":ToggleTerm direction=float<cr>" }
	}
}
