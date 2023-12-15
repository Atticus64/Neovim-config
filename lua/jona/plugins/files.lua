return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  config = function()
	require('oil').setup()
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
