set number
set shortmess+=A
set clipboard+=unnamedplus
let mapleader=","


" Fugitive
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gc :Gcommit -v -q<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>
nnoremap <space>gd :Gdiff<CR>
nnoremap <space>ge :Gedit<CR>
nnoremap <space>gr :Gread<CR>
nnoremap <space>gw :Gwrite<CR><CR>
nnoremap <space>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <space>gp :Ggrep<Space>
nnoremap <space>gm :Gmove<Space>
nnoremap <space>gb :Git branch<Space>
nnoremap <space>go :Git checkout<Space>
" git-gutter
set updatetime=100
" indents
let g:indent_guides_enable_on_vim_startup = 1
set ts=2 sw=2 et
" Go
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
au Filetype go nnoremap <leader>r :GoRun <CR>
au Filetype go nnoremap <leader>b :GoBuild <CR>
