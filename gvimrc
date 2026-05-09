
set guioptions=mcd
"aunmenu Help

"set guiheadroom=0
set autochdir

filetype plugin on

colorscheme catppuccin

set noerrorbells
set vb t_vb=

if has("win32") || has("win64")
	set guifont=Consolas:h12
elseif has("mac")
	set macmeta
	set guifont=Monaco:h14
elseif has("unix")
	set guifont=DejaVu\ Sans\ Mono:h13
endif

set background=dark
