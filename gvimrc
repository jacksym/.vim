
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
    let g:ogFontSize = 12
elseif has("mac")
	set macmeta
	set guifont=Monaco:h14
    let g:ogFontSize = 14
elseif has("unix")
	set guifont=Liberation\ Mono\ 12
    let g:ogFontSize = 12
endif

set background=dark


function! AdjustFontSize(amount)
    let l:font = &guifont
    let l:size = matchstr(l:font, '\d\+$')
    if empty(l:size)
        return
    endif

    let l:newsize = str2nr(l:size) + a:amount
    let &guifont = substitute(l:font, '\d\+$', l:newsize, '')
endfunction

function! SetOgFontSize()
    let l:font = &guifont
    let &guifont = substitute(l:font, '\d\+$', g:ogFontSize, '')
endfunction

nnoremap <C-=> :call AdjustFontSize(1)<CR>
nnoremap <C-_> :call AdjustFontSize(-1)<CR>
nnoremap <C-0> :call SetOgFontSize()<CR>

