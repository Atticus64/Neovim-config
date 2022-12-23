-- local config = vim.env.MYVIMRC
-- You can change this variable to your dotfiles
require('prettier').setup {
	  bin = 'prettier', -- or `'prettierd'` (v0.22+)
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
}

require'alpha'.setup(require'alpha.themes.dashboard'.config)

require('lualine').setup {
    options = { theme  = 'onedark' },
}
require("nvim-tree").setup {
		filters = { custom = { "^.git$" } }
}
require'bufferline'.setup {
    -- Enable/disable animations
    animation = true,
    -- Enable/disable auto-hiding the tab bar when there is a single buffer
    auto_hide = false,
    -- Enable/disable current/total tabpages indicator (top right corner)
    tabpages = true,
    -- Enable/disable close button
    closable = true,
    -- Enables/disable clickable tabs
    --  - left-click: go to buffer
    --  - middle-click: delete buffer
    clickable = true,
    -- Excludes buffers from the tabline
    exclude_name = {'package.json'},
    -- Enable/disable icons
    -- if set to 'numbers', will show buffer index in the tabline
    -- if set to 'both', will show buffer index and icons in the tabline
    icons = true,
}
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "python", "javascript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,


  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- comment
require('nvim_comment').setup()


require('telescope').setup {
		defaults = {
      file_ignore_patterns = {
        "node_modules",
        ".git"
      }
    },
}

require'hop'.setup()

-- require('onedark').setup {
    -- transparent = true,  -- Show/hide background
-- }
require('onedark').load()

vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

