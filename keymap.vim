"Jack Symonds ~/.vim/keymap.vim

let mapleader="\<Space>"

vnoremap <C-c> "+y
inoremap <C-v> <Esc>"+Pa
inoremap <M-Backspace> <C-w>

noremap <leader>d <Cmd>E<CR>
noremap <leader>f :e<Space>
cnoremap <M-Backspace> <C-W>
noremap <leader><leader> :b<Space>

noremap <leader>i <Cmd>execute 'edit ' . fnameescape(g:vimdir) . '/'<CR>

noremap <leader>wv <C-w>v<C-w>h
noremap <leader>ws <C-w>s<C-w>k
noremap <leader>wo <C-w>o
noremap <leader>wc <C-w>c
noremap <leader>wh <C-w>h
noremap <leader>wj <C-w>j
noremap <leader>wk <C-w>k
noremap <leader>wl <C-w>l
noremap <M-H> <Cmd>tabprev<CR>
noremap <M-L> <Cmd>tabnext<CR>
noremap <leader>wH <C-w>H
noremap <leader>wJ <C-w>J
noremap <leader>wK <C-w>K
noremap <leader>wL <C-w>L

nnoremap <leader>gl <Cmd>vimgrep /<C-R><C-W>/gj **/*<CR><Cmd>copen<CR>
vnoremap <leader>gl y<Cmd>execute 'vimgrep /' . escape(@", '/\') . '/gj **/*'<CR><Cmd>copen<CR>
nnoremap gn <Cmd>cnext<CR>
nnoremap gp <Cmd>cprev<CR>

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

nnoremap <leader>gg <Cmd>call VimgrepPrompt()<CR>


"function! ToggleComment() abort
"
"    if !exists('b:comment_start')
"        echoerr 'No b:comment_start set for this filetype'
"        return
"    endif
"    let l:cs = escape(b:comment_start, '\&')
"    let l:line = getline('.')
"    if l:line =~# '^\s*' . escape(b:comment_start, '\.*[]~')
"        execute 's/^\(\s*\)' . l:cs . '\s\?/\1/'
"    else
"        call setline('.', substitute(l:line, '^\s*', '&' . b:comment_start . ' ', ''))
"    endif
"
"endfunction


