"Jack Symonds ~/.vim/keymap.vim

let mapleader="\<Space>"

vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+Pa
inoremap <M-Backspace> <C-w>

"more
noremap <leader>d :E<CR>
noremap <leader>f :e<Space>
cnoremap <M-Backspace> <C-W>
nnoremap <leader><leader> :b<Space>
" noremap <leader>n :vsp<CR>:enew<CR>

"nnoremap <leader>i :execute 'edit ' . fnameescape(fnamemodify($MYVIMRC, ':h')) . '/'<CR>
nnoremap <leader>i :execute 'edit ' . fnameescape(g:vimdir) . '/'<CR>

nnoremap <leader>wv <C-w>v<C-w>h
nnoremap <leader>ws <C-w>s<C-w>k
nnoremap <leader>wo <C-w>o
nnoremap <leader>wc <C-w>c
nnoremap <leader>wh <C-w>h
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wl <C-w>l
nnoremap <M-H> :tabprev<CR>
nnoremap <M-L> :tabnext<CR>


nnoremap <leader>wH <C-w>H
nnoremap <leader>wJ <C-w>J
nnoremap <leader>wK <C-w>K
nnoremap <leader>wL <C-w>L

nnoremap <leader>gl :vimgrep /<C-R><C-W>/gj **/*<CR>:copen<CR>
vnoremap <leader>gl y:execute 'vimgrep /' . escape(@", '/\') . '/gj **/*'<CR>:copen<CR>
nnoremap gn :cnext<CR>
nnoremap gp :cprev<CR>

function! VimgrepPrompt() abort
  call inputsave()
  let l:pat = input('Search: ')
  call inputrestore()

  if empty(l:pat)
    echo 'Cancelled'
    return
  endif

  call setqflist([], 'r')
  execute 'vimgrep /\V' . escape(l:pat, '\/') . '/gj **/*'
  copen
endfunction

nnoremap <leader>gg :call VimgrepPrompt()<CR>


