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

let g:netrw_banner = 0
let g:netrw_liststyle = 0 "g:netrw_liststyle=1 significantly messes with sorting/hiding
let g:netrw_altv = 1
let g:netrw_sort_options = "i"
let g:netrw_sort_direction = "normal"
let g:netrw_sort_by = 'exten'
let g:netrw_list_hide = '^\.\.\=/'

if has("win32") || has("win64")
	set backspace = indent,eol,start
elseif has("mac")
    nnoremap <D-]> <C-]>
endif


"terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-c> "+y

let g:vimdir = fnamemodify($MYVIMRC, ':h')
execute 'source' fnameescape(g:vimdir . '/keymap.vim')

"custom languages
au BufRead,BufNewFile *.scr	set filetype=STOL
au BufRead,BufNewFile *.script set filetype=GMAT

packadd comment

call plug#begin(g:vimdir . '/plugged')
"Plug 'Exafunction/windsurf.vim', { 'branch': 'main' }
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
call plug#end()


execute 'source' fnameescape(g:vimdir . '/lsp.vim')

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"
