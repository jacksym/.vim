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

"windows
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

au BufNewFile,BufRead *.c set filetype=c
au BufNewFile,BufRead *.tex set filetype=tex
au BufNewFile,BufRead *.py set filetype=python
au BufNewFile,BufRead *.tsv set filetype=tsv
