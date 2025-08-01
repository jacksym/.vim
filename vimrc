"Jack Symonds ~/.vimrc

set shortmess+=I

"my configs
syntax enable
set nocompatible
set number
set incsearch
set ruler
set linebreak
"set autoindent
set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
set noswapfile
set smartcase
set fillchars+=vert:\ 
set scrolloff=3
set wildmenu
"set colorcolumn=80

if has("win32") || has("win64")
	noremap <leader>i :e ~/vimfiles/<CR>
elseif has("mac")
	noremap <leader>i :e ~/.vim/<CR>
	set macmeta
elseif has("unix")
	noremap <leader>i :e ~/.vim/<CR>
endif

vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+Pa
inoremap <M-Backspace> <C-w>

"more
let mapleader="\<Space>"
noremap <leader>d :E<CR>
noremap <leader>f :call feedkeys(":e " . fnameescape(expand('%:p:h')) . '/', 'n')<CR>
cnoremap <M-Backspace> <C-W>
nnoremap <leader><leader> :b<Space>
" noremap <leader>n :vsp<CR>:enew<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_altv = 1
let g:netrw_sort_options = "i"
let g:netrw_sort_direction = "normal"
let g:netrw_sort_sequence = '[\/]$,*,'

"windows
set splitbelow
set splitright
nnoremap <leader>wv <C-w>v<C-w>h
nnoremap <leader>ws <C-w>s<C-w>k
nnoremap <leader>wo <C-w>o
nnoremap <leader>wc <C-w>c
nnoremap <M-h> <C-w>h
nnoremap <M-j> <C-w>j
nnoremap <M-k> <C-w>k
nnoremap <M-l> <C-w>l
nnoremap <M-H> :tabprev<CR>
nnoremap <M-L> :tabnext<CR>


nnoremap <leader><M-h> <C-w>H
nnoremap <leader><M-j> <C-w>J
nnoremap <leader><M-k> <C-w>K
nnoremap <leader><M-l> <C-w>L


"au BufNewFile,BufRead *.c set filetype=c
