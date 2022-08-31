-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --   -- Lazy loading:
    --   -- Load on specific commands
    --   use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

    --   -- Load on an autocommand event
    --   use {'andymass/vim-matchup', event = 'VimEnter'}

    --   -- Load on a combination of conditions: specific filetypes or commands
    --   -- Also run code after load (see the "config" key)
    --   use {
    --     'w0rp/ale',
    --     ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    --     cmd = 'ALEEnable',
    --     config = 'vim.cmd[[ALEEnable]]'
    --   }

    --   -- Plugins can have dependencies on other plugins
    --   use {
    --     'haorenW1025/completion-nvim',
    --     opt = true,
    --     requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
    --   }

    --   -- Plugins can also depend on rocks from luarocks.org:
    --   use {
    --     'my/supercoolplugin',
    --     rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
    --   }

    --   -- You can specify rocks in isolation
    --   use_rocks 'penlight'
    --   use_rocks {'lua-resty-http', 'lpeg'}

    --   -- Local plugins can be included
    --   use '~/projects/personal/hover.nvim'

    --   -- Plugins can have post-install/update hooks
    --   use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

    -- Post-install/update hook with neovim command
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Post-install/update hook with call of vimscript function with argument
    use {
        'glacambre/firenvim',
        run = function()
            vim.fn['firenvim#install'](0)
        end
    }


	-- Comment
    use "terrortylor/nvim-comment"

  -- Dashboard
	  use {'glepnir/dashboard-nvim'}

    -- Use specific branch, dependency and run lua file after load
    -- use {
    --   'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    --   requires = {'kyazdani42/nvim-web-devicons'}
    -- }

    -- Complements

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
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
        requires = {'kyazdani42/nvim-web-devicons' -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }


    -- tmux
    use({
        "aserowy/tmux.nvim",
        config = function()
            require("tmux").setup({
                -- overwrite default configuration
                -- here, e.g. to enable default bindings
                copy_sync = {
                    -- enables copy sync and overwrites all register actions to
                    -- sync registers *, +, unnamed, and 0 till 9 from tmux in advance
                    enable = true
                },
                navigation = {
                    -- enables default keybindings (C-hjkl) for normal mode
                    enable_default_keybindings = true
                },
                resize = {
                    -- enables default keybindings (A-hjkl) for normal mode
                    enable_default_keybindings = true
                }
            })
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

    -- barbar
    use {
      'romgrk/barbar.nvim',
      requires = {'kyazdani42/nvim-web-devicons'}
    }

    -- Use dependency and run lua function after load
    -- use {
    --     'lewis6991/gitsigns.nvim',
    --     requires = {'nvim-lua/plenary.nvim'},
    --     config = function()
    --         require('gitsigns').setup()
    --     end
    -- }

    -- You can alias plugin names
    use {
        'dracula/vim',
        as = 'dracula'
    }
end)