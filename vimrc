"Jack Symonds ~/.vimrc


filetype plugin on

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
"set colorcolumn=80

vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+Pa
inoremap <M-Backspace> <C-w>

"more
let mapleader="\<Space>"
noremap <leader>v :tabe ~/.vim/vimrc<CR>
noremap <leader>g :tabe ~/.vim/gvimrc<CR>
noremap <leader>u :tabe ~/.vim/ftplugin/<CR>
noremap <leader>f :vsp<CR>:E<CR>
noremap <leader>n :vsp<CR>:enew<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_altv = 1
let g:netrw_winsize = 45

"windows
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l
nnoremap <leader>c <C-w>c

au BufNewFile,BufRead *.c set filetype=c
au BufNewFile,BufRead *.tex set filetype=tex
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.tsv set filetype=tsv
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.txt set filetype=txt

packadd! dracula
