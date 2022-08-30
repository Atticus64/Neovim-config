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

  local db = require('dashboard')
  -- macos
  db.preview_command = 'cat | lolcat'
  -- linux
  db.preview_file_path = '~/.config/nvim/static/neovim.cat'
  db.preview_file_height = 10
  db.preview_file_width = 70
  db.custom_center = {
      {icon = '  ',
      desc = 'Command History                         ',
      shortcut = 'SPC c h',
      action =':Telescope command_history'},
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  ':Telescope oldfiles',
      shortcut = 'SPC f o'},
      {icon = '  ',
      desc = 'Find File                               ',
      action = ':Telescope find_files',
      shortcut = 'SPC f f'},
      {icon = '  ',
      desc ='Change Theme                            ',
      action =  ':Telescope colorscheme',
      shortcut = 'SPC c t'},
      {icon = '  ',
      desc = 'Open Personal dotfiles                  ',
      action = ':edit ~/.config/nvim/',
      shortcut = 'SPC f d'},
    }

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "python", "javascript"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- comment
require('nvim_comment').setup()


require('telescope').setup {
		-- file_ignore_patterns = {
		-- 		"**/node_modules/**"
		-- }
		defaults = { 
      file_ignore_patterns = {
        "node_modules", 
        ".git"
      }
    },
}
-- require('onedark').setup {
    -- transparent = true,  -- Show/hide background
-- }
require('onedark').load() 

vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

