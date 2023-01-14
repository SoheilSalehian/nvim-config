call plug#begin()
Plug 'https://github.com/airblade/vim-gitgutter'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/overcache/NeoSolarized'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/nathanaelkane/vim-indent-guides'
Plug 'https://github.com/mfussenegger/nvim-dap'
Plug 'https://github.com/rcarriga/nvim-dap-ui'
call plug#end()

colorscheme NeoSolarized
let g:gitgutter_eager = 1

let mapleader = ","
nnoremap <leader>w :NERDTree<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-t> :split term://bash <CR>
tnoremap <Esc> <C-\><C-n>

set number
set hidden
set shortmess+=A
set clipboard+=unnamedplus
nmap <C-m> gcc
set guifont=Consolas:h10
set mouse=a
let g:indent_guides_enable_on_vim_startup = 1
set ts=2 sw=2 et

" Fugitive
nnoremap <space>ga :Git add %:p<CR><CR>
nnoremap <space>gs :Git<CR>
nnoremap <space>gc :Git commit -v -q<CR>
nnoremap <space>gt :Git commit -v -q %:p<CR>
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


" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>

function! NvuiGetTitle()
  return 🥑
endfunction
