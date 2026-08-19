
set guioptions=mcd
"aunmenu Help

"set guiheadroom=0
set autochdir

filetype plugin on

colorscheme catppuccin

set noerrorbells
set vb t_vb= "gvimrc needs to set this

if has("win32") || has("win64")
	set guifont=Consolas\ 12
elseif has("mac")
	set macmeta
	set guifont=Monaco:h14
elseif has("unix")
	set guifont=Liberation\ Mono\ 12
endif

set background=dark
