"Jack Symonds ~/.vimrc


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
set shortmess=I
set fillchars+=vert:\ 
set scrolloff=8
"set colorcolumn=80

if has("win32") || has("win64")
elseif has("mac")
	set macmeta
elseif has("unix")
endif

vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+Pa
inoremap <M-Backspace> <C-w>

"more
let mapleader="\<Space>"
noremap <leader>i :e ~/.vim/<CR>
"noremap <leader>u :e ~/.vim/ftplugin/<CR>
noremap <leader>d :E<CR>
noremap <leader>f :e 
" noremap <leader>n :vsp<CR>:enew<CR>

let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_altv = 1
let g:netrw_sort_options = "i"
let g:netrw_sort_by = "exten"
let g:netrw_sort_direction = "normal"
"let g:netrw_winsize = 45
"let g:netrw_sort_sequence = '[\/]$,*,'

"windows
nnoremap <leader>wv <C-w>v
nnoremap <leader>ws <C-w>s
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
"au BufNewFile,BufRead *.cpp set filetype=cpp
"au BufNewFile,BufRead *.tex set filetype=tex
"au BufNewFile,BufRead *.py set filetype=python
"au BufNewFile,BufRead *.tsv set filetype=tsv
"au BufNewFile,BufRead *.txt set filetype=txt
