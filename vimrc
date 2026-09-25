"Jack Symonds ~/.vimrc

set shortmess=IfiltoO

"my configs
syntax enable
set nocompatible
set incsearch
set ruler
set linebreak
set autoindent
filetype plugin indent on
set noswapfile
set smartcase
set scrolloff=3
set wildmenu
set wildoptions=pum
set nowrap
set splitbelow
set splitright
autocmd Filetype *.vim setlocal number

"set smartindent
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab

let g:netrw_keepdir = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 0 "g:netrw_liststyle=1 significantly messes with sorting/hiding
let g:netrw_altv = 1
let g:netrw_sort_options = "i"
let g:netrw_sort_direction = "normal"
let g:netrw_sort_by = 'exten'
let g:netrw_list_hide = '^\.\.\=/'

"terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> "+y

"custom languages
au BufRead,BufNewFile *.scr	   set filetype=STOL
au BufRead,BufNewFile *.script set filetype=GMAT

packadd comment

let g:vimdir = fnamemodify($MYVIMRC, ':h')
" to forego plug,
" delete plugged/, manually add packages through
" ~/.vim/pack/plug/start/<plugin>
call plug#begin(g:vimdir . '/plugged')
"Plug 'Exafunction/windsurf.vim', { 'branch': 'main' }
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'tpope/vim-fugitive'
"Plug 'epheien/termdbg'
call plug#end()

execute 'source' fnameescape(g:vimdir . '/keymap.vim')
execute 'source' fnameescape(g:vimdir . '/lsp.vim')
"execute 'source' fnameescape(g:vimdir . '/debugger.vim')

