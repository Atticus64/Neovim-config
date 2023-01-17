vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use({
		"glepnir/lspsaga.nvim",
		branch = "main",
		config = function()
			require('lspsaga').setup({})
		end,
	})
	use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

	use { 'Atticus64/infinity_train.nvim' }

	use { 'folke/tokyonight.nvim' }

	use { 'EdenEast/nightfox.nvim' }

	use { 'wuelnerdotexe/vim-astro' }
	use { 'neovim/nvim-lspconfig' }
	use { 'sigmasd/deno-nvim' }

	use { 'tpope/vim-surround' }

	use {
		'goolord/alpha-nvim',
	}

	use {
		'lewis6991/impatient.nvim'
	}

	use {
		'nvim-tree/nvim-web-devicons'
	}

	-- Prettier
	use {
		'MunifTanjim/prettier.nvim'
	}

	use {
		'glacambre/firenvim',
		run = function()
			vim.fn['firenvim#install'](0)
		end
	}


	-- Comment
	use "terrortylor/nvim-comment"

	-- Telescope
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- Lualine
	use {
		'nvim-lualine/lualine.nvim',
		requires = {
			'kyazdani42/nvim-web-devicons',
			opt = true
		}
	}


	-- Hop.nvim
	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = function()
			require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		end
	}

	-- Themes or Schemes
	use 'navarasu/onedark.nvim'
	use {
		"catppuccin/nvim",
		as = "catppuccin"
	}


	-- nvim tree
	use {
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons' -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}


	-- tmux
	use({
		"aserowy/tmux.nvim",
		config = function()
			require("tmux").setup()
		end
	})

	-- LSP
	use({
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"jose-elias-alvarez/null-ls.nvim",
	})

	--completation
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-git",
			"saadparwaiz1/cmp_luasnip",
			"onsails/lspkind-nvim",
			"L3MON4D3/LuaSnip",
			"windwp/nvim-autopairs",
		},
	})


	-- LSP Config & debbugers
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	})


	-- You can alias plugin names
	use {
		'dracula/vim',
		as = 'dracula'
	}
end)
