local augroups = {}

augroups.misc = {
	highlight_yank = {
		event = "TextYankPost",
		pattern = "*",
		callback = function()
			vim.highlight.on_yank { higroup = "IncSearch", timeout = 400, on_visual = true }
		end,
	},

	format_on_save = {
		event = "BufWritePre",
		pattern = "*",
		callback = function()
			vim.lsp.buf.format()
		end,
	}
	-- unlist_terminal = {
	-- 	event = "TermOpen",
	-- 	pattern = "*",
	-- 	callback = function()
	-- 		vim.opt_local.buflisted = false
	-- 	end
	-- },
}


for group, commands in pairs(augroups) do
	local augroup = vim.api.nvim_create_augroup("AU_" .. group, { clear = true })

	for _, opts in pairs(commands) do
		local event = opts.event
		opts.event = nil
		opts.group = augroup
		vim.api.nvim_create_autocmd(event, opts)
	end
end
