let mapleader = ' '
nnoremap <leader>p :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>uf :Files ~<cr>
nnoremap <leader>t :terminal <cr>
"Atajo para abrir una terminal diferente a la actual
"Compilar el archivo cpp
nnoremap <F3> :!g++ % -o %:r<cr>
"Ejecutar el archivo a.exe generedo por la compilacion
nnoremap <F4> :terminal ; ./%:r<cr>
"Panel Size
nnoremap <M-[> 10<C-w><
nnoremap <M-]> 10<C-w>>
 "Remap keys for gotos
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> gy <Plug>(coc-type-definition)
nnoremap <silent> gi <Plug>(coc-implementation)
nnoremap <silent> gr <Plug>(coc-references)
nnoremap <leader>w :w<cr>
"Guardar => Space + w
nnoremap <leader>q :q<cr>
"Salir => Space + q
nnoremap <leader>e :q!<cr>
"Salir de golpe
nmap <leader>s <Plug>(easymotion-s2)
"El easymotion nos ayuda a buscar
nnoremap J 10j
nnoremap K 10k
"Navegacion rapida
nnoremap <leader>nt :NERDTreeFind<cr>
"Abre el Nerd Tree para navegar archivos
nnoremap <leader>plug :PlugInstall<cr>
nnoremap <leader>f $
"Copiar hasta el final de una linea
nnoremap Y y$
"Fin linea => Space + f
nmap <leader>Y :%y+<cr>
"Copiar todo el contenido del archivo
nnoremap <leader>a ^
"Inicio linea => Space + a
imap ,, <esc>
"Escape rapido => Alt + n
vmap <leader>f $
vmap <leader>a ^
vmap ,, <esc>
nnoremap <M-k> :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
"Rename symbol
nnoremap <leader>rn <Plug>(coc-rename)
"Crear una lista de numeros
vnoremap <C-l> g<C-a>
