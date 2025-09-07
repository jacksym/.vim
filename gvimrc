
set guioptions=mcd
"aunmenu Help

"set guiheadroom=0
set autochdir

filetype plugin on

colorscheme pencil
" colorscheme slate

if has("win32") || has("win64")
	set guifont=Consolas:h15
elseif has("mac")
	set guifont=Monaco:h14
elseif has("unix")
	set guifont=DejaVu\ Sans\ Mono:h13
endif

set background=dark
