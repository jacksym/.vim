
set guioptions=cd
"set guiheadroom=0
nnoremap <C-S-m> :set guioptions+=m<CR>
set autochdir

filetype plugin on

colorscheme pencil
" colorscheme slate

"light themes to avoid:
"	blue
"	delek
"	morning
"	shine
"	zeliner

if has("win32") || has("win64")
	set guifont=Consolas:h15
elseif has("mac")
	set guifont=Monaco:h14
elseif has("unix")
endif



set background=dark
