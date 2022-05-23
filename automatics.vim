augroup AuYank
	autocmd!
	autocmd TextYankPost *
		\ lua vim.highlight.on_yank{higroup="IncSearch", timeout=400, on_visual=true}
augroup END
"Ultima posicion en el archivo
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
