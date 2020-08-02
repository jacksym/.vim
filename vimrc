"Jack Symonds ~/.vimrc

filetype plugin on

"my configs
set nocompatible
set number
set incsearch
set ruler
set nowrap
set autoindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab
"set colorcolumn=80

"more
let mapleader="\<Space>"
noremap <leader>v :tabe ~/.vim/vimrc<CR>
noremap <leader>g :tabe ~/.vim/gvimrc<CR>
noremap <leader>u :tabnew<CR>:20Vexplore ~/.vim/ftplugin/<CR>
noremap <leader>f :20Vexplore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 1
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

au BufNewFile,BufRead *.c set filetype=c
au BufNewFile,BufRead *.tex set filetype=tex
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.tsv set filetype=tsv

packloadall
silent! helptags ALL
