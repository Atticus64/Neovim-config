local augroups = {}

augroups.misc = {
	highlight_yank = {
		event = "TextYankPost",
		pattern = "*",
		callback = function ()
			vim.highlight.on_yank{higroup="IncSearch", timeout=400, on_visual=true}
		end,
	},
	unlist_terminal = {
		event = "TermOpen",
		pattern = "*",
		callback = function ()
			vim.opt_local.buflisted = false
		end
	},
    syntax_hbs = {
        event = 'BufWinEnter',
        pattern = '*',
        callback = function()
            if vim.bo.filetype == 'handlebars' then
                vim.cmd.set('syntax=html')
            end
        end
    }
}


for group, commands in pairs(augroups) do
	local augroup = vim.api.nvim_create_augroup("AU_"..group, {clear = true})

	for _, opts in pairs(commands) do
		local event = opts.event
		opts.event = nil
		opts.group = augroup
		vim.api.nvim_create_autocmd(event, opts)
	end
end

