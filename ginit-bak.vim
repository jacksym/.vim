" Enable Mouse
set mouse=a

let s:guifont = "Monego"
let s:fontsize = "14"
function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont!" . s:guifont . ":h" . s:fontsize
endfunction 

function! SetGuiFont()
  :execute "GuiFont!" . s:guifont . ":h" . s:fontsize
endfunction

" Set Editor Font
if exists(':GuiFont')
    " Use GuiFont! to ignore font errors
    GuiFont Monego:h18
	":call SetGuiFont()<CR>
endif

nnoremap <C-+> :call AdjustFontSize(1)<CR>
" nnoremap <C-S--> :call AdjustFontSize(-1)<CR>
nnoremap <C--> :call AdjustFontSize(-1)<CR>
nnoremap <C-)> :GuiFont Monego:h14<CR>
" nnoremap <C-)> :call SetGuiFont()<CR>

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif


" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

colorscheme NeoSolarized
set autochdir

let g:netrw_sort_sequence = " ^[^\.].*\/$, ^[^\.].*, ^\..*\/$, ^\..*, * "
"
" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
