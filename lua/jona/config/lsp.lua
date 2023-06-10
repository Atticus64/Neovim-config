local util = require('lspconfig/util')

local filetype_attach = setmetatable({
	gdscript = function(_)
	end,
}, {
	__index = function()
		return function()
		end
	end,
})

-- Since I use null os this allows to have the format and actions
-- in all buffers not just configured servers
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>vf", function()
	return vim.lsp.buf.format({ async = true })
end, {})

local function on_attach(client)
	local filetype = vim.api.nvim_buf_get_option(0, "filetype")
	-- keymaps for lsp
	vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = 0 })
	vim.keymap.set("n", "<leader>vn", vim.diagnostic.goto_next, { buffer = 0 })
	vim.keymap.set("n", "<leader>vp", vim.diagnostic.goto_prev, { buffer = 0 })
	vim.keymap.set("i", "<c-h>", vim.lsp.buf.signature_help, { buffer = 0 })
	vim.keymap.set("n", "<leader>vo", ":LspRestart<cr>", { noremap = true })

	vim.bo.omnifunc = "v:lua.vim.lsp.omnifunc"

	-- Attach any filetype specific options to the client
	filetype_attach[filetype](client)
end

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
-- 	underline = true,
-- 	update_in_insert = false,
-- 	virtual_text = { spacing = 2, prefix = "●" },
-- 	severity_sort = true,
-- })

vim.diagnostic.config({
	virtual_text = false,
})

local signs = { Error = "⛔", Warn = "", Hint = "💡", Info = "❗" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Actual configs
local lsp_flags = {
	debounce_text_changes = 150,
}

require("lspconfig")["rust_analyzer"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	-- Server-specific settings...
	settings = {
		["rust-analyzer"] = {
			checkOnSave = {
				command = "clippy",
			},
		},
	},
})

require("lspconfig")["crystalline"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	-- Server-specific settings...
})

require("lspconfig")["gopls"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
	-- Server-specific settings...
})



require("lspconfig").dockerls.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

require("lspconfig")["intelephense"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})
require("lspconfig").jsonls.setup({
	flags = lsp_flags,
})
require("lspconfig").html.setup({
	flags = lsp_flags,
})
require("lspconfig").html.setup({
	flags = lsp_flags,
})
require("lspconfig").emmet_ls.setup({
	flags = lsp_flags,
})

require("lspconfig").clangd.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

require("lspconfig").gdscript.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

require("lspconfig").tsserver.setup({
	autostart = false,
	on_attach = on_attach,
	autostart = true,
	flags = lsp_flags,
	-- root_dir = util.root_pattern("package.json", "tsconfig.json"),
})

require("lspconfig").svelte.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	root_dir = util.root_pattern("svelte.config.js"),
})

require("lspconfig").tailwindcss.setup({
	on_attach = on_attach,
	flags = lsp_flags,
	root_dir = util.root_pattern("package.json"),
})


require("lspconfig").volar.setup({
	on_attach = on_attach,
	flags = lsp_flags,
})

require('lspconfig').vls.setup {}

require "deno-nvim".setup({
	server = {
		autostart = true,
		on_attach = on_attach,
		capabilities = lsp_flags,
		-- root_dir = util.root_pattern("deno.jsonc"),
		settings = {
			deno = {
				inlayHints = {
					parameterNames = {
						enabled = "all"
					},
					parameterTypes = {
						enabled = true
					},
					variableTypes = {
						enabled = true
					},
					propertyDeclarationTypes = {
						enabled = true
					},
					functionLikeReturnTypes = {
						enabled = true
					},
					enumMemberValues = {
						enabled = true
					},
				}
			}
		}
	}
})

require("lspconfig")["lua_ls"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})


require('lspconfig')["pyright"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})
