
set guioptions=cd
"set guiheadroom=0
nnoremap <C-S-m> :set guioptions+=m<CR>
set autochdir

filetype plugin on

packadd! dracula
" colorscheme dracula
colorscheme shades_of_purple

"light themes to avoid:
"	blue
"	delek
"	morning
"	shine
"	zeliner
" colorscheme pencil

if has("win32") || has("win64")
	set guifont=Consolas:h15
elseif has("unix")
	set guifont=Monaco\ 11
endif



set background=dark
