
-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- exit insert mode
map("i", ",,", "<esc>")

-- exit virtual mode
map("v", ",,", "<esc>")

-- close file
map("n", "<Leader>q", ":q<CR>")

-- save file
map("n", "<Leader>w", ":w<CR>")

-- exit without saving
map("n", "<Leader>e", ":q!<CR>")

-- open terminal
map("n", "<Leader>ot", ":term<CR>")

-- next tab 
map("n", "<Leader>d", ":tabNext<CR>")

-- open tab edit 
map("n", "<leader>te", ":tabedit ")


-- Dashboard shortcuts
map("n", "<leader>ch", ":Telescope command_history")
map("n", "<leader>fo", ":Telescope oldfiles<CR>")
map("n", "<leader>ct", ":Telescope colorscheme<CR>")
map("n", "<leader>fd", ":edit ~/.config/nvim/<CR>")


-- toggle comment
map("n", "<leader>c<Leader>", ":CommentToggle<CR>")
map("v", "<leader>c<Leader>", ":CommentToggle<CR>")

-- custom
map("n", "-", "10k")
map("n", "m", "10j")
map("n", "<Leader>Y", ":%y+<CR>")
map("n", "Y", "y$")
map("n", "<leader>g", "$")
map("n", "<leader>a", "^")


-- Telescope 
map("n", "<leader>ff", ":Telescope find_files<CR>")
map("n", "<leader>fg", ":Telescope live_grep<CR>")
map("n", "<leader>fb", ":Telescope buffers<CR>")
map("n", "<leader>fh", ":Telescope help_tags<CR>")

-- NvimTree
map("n", "<leader>nt", ":NvimTreeToggle<CR>")


-- Tmux Navigator
map("n", "<C-h>", ":lua require('tmux').move_left()<CR>")
map("n", "<C-l>", ":lua require('tmux').move_right()<CR>")
map("n", "<C-k>", ":lua require('tmux').move_bottom()<CR>")
map("n", "<C-j>", ":lua require('tmux').move_top()<CR>")



-- barbar shortcuts
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
