
"Banner
"let g:dashboard_custom_header = [
"\ '  ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
"\ '  ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
"\ '  ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
"\ '  ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
"\ '  ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
"\ '  ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
"\]

let g:dashboard_custom_header = [
\' ███    ██ ███████  ██████  ██    ██ ██ ███    ███ ',
\' ████   ██ ██      ██    ██ ██    ██ ██ ████  ████ ',
\' ██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██ ',
\' ██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██ ',
\' ██   ████ ███████  ██████    ████   ██ ██      ██ ',
\]

"Atajos de DashBoard
"nmap <leader>ks :<C-u>SessionSave<CR>
"nmap <leader>ls :<C-u>SessionLoad<CR>
nnoremap <leader>cf :edit ~/AppData\Local\nvim\init.vim<CR>
nnoremap <silent> <Leader>bh :DashboardFindHistory<CR>
nnoremap <silent> <Leader>ba :DashboardFindFile<CR>
nnoremap <silent> <Leader>ct :DashboardChangeColorscheme<CR>
nnoremap <silent> <Leader>bw :DashboardFindWord<CR>
nnoremap <silent> <Leader>bj :DashboardJumpMark<CR>
nnoremap <silent> <Leader>nf :DashboardNewFile<CR>
let g:dashboard_custom_section = {
	\ 'row0': {
		\ 'description': ['    Nuevo Archivo                           SPC n f'],
		\ 'command': ':enew'
	\},
	\ 'row1': {
		\ 'description': ['   Buscar Archivo                          SPC b a'],
		\ 'command': ':Files'
	\},
	\ 'row2': {
		\ 'description': ['   Archivos recientes                      SPC b h'],
		\ 'command': ':History'
	\},
	\ 'row3': {
		\ 'description': ['   Cambiar Tema                            SPC c t'],
		\ 'command': ':Colors'
	\},
	\ 'row4': {
		\ 'description': ['    Abrir Vimrc                             SPC c f'],
		\ 'command': 'edit ~/AppData\Local\nvim\init.vim'
	\},
	\ 'row5': {
		\ 'description': ['   Saltar a Book Mark                      SPC b j'],
		\ 'command': ':Marks'
	\},
	\ 'row6': {
		\ 'description': [' Close neovim                            SPC q'],
		\ 'command': 'qa!'
	\},
\}
