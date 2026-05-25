
set guioptions=mcd
"aunmenu Help

"set guiheadroom=0
set autochdir

filetype plugin on

colorscheme catppuccin

set noerrorbells
set vb t_vb= "gvimrc needs to set this

if has("win32") || has("win64")
	set guifont=Consolas:h12
elseif has("mac")
	set guifont=Monaco:h14
	set macmeta
elseif has("unix")
	set guifont=DejaVu\ Sans\ Mono:h13
endif

set background=dark
