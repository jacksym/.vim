"macvim switches
let macvim_skip_cmd_opt_movement = 1
set guioptions-=rL

"appearance
let lightmode = 1
colorscheme peachpuff
set guifont=Monaco

nnoremap <D-d> :call LDToggle()<CR>

redir => current_colorscheme
	silent colorscheme
redir END

function! LDToggle()
	if g:current_colorscheme == "peachpuff"
		execute "colorscheme desert"
	else
		execute "colorscheme peachpuff"
	endif
endfunction
