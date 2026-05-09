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
set splitbelow
set splitright
set nowrap
set wildoptions=pum
autocmd Filetype *.vim setlocal number

set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set noexpandtab

let g:netrw_banner = 0
let g:netrw_liststyle = 1
"let g:netrw_liststyle = 0
let g:netrw_altv = 1
let g:netrw_sort_options = "i"
let g:netrw_sort_direction = "normal"
let g:netrw_sort_by = 'exten'
let g:netrw_list_hide = '^\.\.\=/'
"let :netrw_sort_sequence = '[\/]$,\.c$,\.h$,\.txt$,*'

"terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> "+y

let g:vimdir = fnamemodify($MYVIMRC, ':h')
execute 'source' fnameescape(g:vimdir . '/keymap.vim')

