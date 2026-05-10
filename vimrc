"Jack Symonds ~/.vimrc

set shortmess=IfilnxtToO

"my configs
syntax enable
set nocompatible
set incsearch
set ruler
set linebreak
"set autoindent
set noswapfile
set smartcase
set scrolloff=3
set wildmenu
set wildoptions=pum
set nowrap
set splitbelow
set splitright
autocmd Filetype *.vim setlocal number

set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab

let g:netrw_banner = 0
let g:netrw_liststyle = 0 "g:netrw_liststyle=1 significanlty messes with sorting/hiding
let g:netrw_altv = 1
let g:netrw_sort_options = "i"
let g:netrw_sort_direction = "normal"
let g:netrw_sort_by = 'exten'
let g:netrw_list_hide = '^\.\.\=/'

"terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> "+y

let g:vimdir = fnamemodify($MYVIMRC, ':h')
execute 'source' fnameescape(g:vimdir . '/keymap.vim')
execute 'source' fnameescape(g:vimdir . '/lsp.vim')

"custom languages
au BufRead,BufNewFile *.scr	set filetype=STOL
au BufRead,BufNewFile *.script set filetype=GMAT
