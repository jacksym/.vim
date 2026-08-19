" python
if executable('pylsp')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pylsp',
        \ 'cmd': {server_info->['pylsp']},
        \ 'allowlist': ['python'],
        \ })
endif

" C++
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> \ <plug>(lsp-definition)
    nmap <buffer> <C-\\> <plug>(lsp-declaration)
    " nmap <buffer> gs <plug>(lsp-document-symbol-search)
    " nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> | <plug>(lsp-references)
    nmap <buffer> K <plug>(lsp-hover)
    nmap <buffer> <leader>rr <plug>(lsp-rename)
    nmap <buffer> <leader>. <plug>(lsp-code-action)
    nmap <buffer> <M-k> <plug>(lsp-previous-diagnostic)
    nmap <buffer> <M-j> <plug>(lsp-next-diagnostic)


" Definition	F12	Go To Definition
" Declaration	Ctrl+F12	Primarily C++; availability depends on language
" Type definition	F12	Visual Studio has no separate “Type Definition” command—use Go To Definition on the type
" Implementation	Ctrl+F12	Context/language-sensitive; overlaps with Go To Declaration
" References	Shift+F12	Find All References
" Hover/documentation	Ctrl+K, Ctrl+I	Quick Info
" Request signature help manually	Ctrl+Shift+Space	Parameter Info
" Search document symbols	Ctrl+F2	Focuses the editor Navigation Bar for types/members in the current document
" Search workspace symbols	Ctrl+1, Ctrl+S	Go To Symbol; Ctrl+T, Ctrl+,, or Ctrl+P opens broader Go To All/Code Search
" Rename	Ctrl+R, Ctrl+R	Rename code symbol in C#/VB
" Code actions	Ctrl+.	Quick Actions and Refactorings
" Previous diagnostic	Alt+Page Up	Previous issue in the current file
" Next diagnostic	Alt+Page Down	Next issue in the current file
" Previous Error List item	Shift+F8	Navigates the Error List/Output locations
" Next Error List item	F8	Navigates the Error List/Output locations
" List document diagnostics	Ctrl+\, E or Ctrl+\, Ctrl+E	Opens Error List; then set its scope to Current Document
" Format document	Ctrl+K, Ctrl+D	
" Format selection	Ctrl+K, Ctrl+F	
" LSP status	No default mapping	Visual Studio has no generic user-facing “LSP Status” command equivalent to editors such as Neovim or VS Code




    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
    
endfunction

"set foldmethod=expr
"  \ foldexpr=lsp#ui#vim#folding#foldexpr()
"  \ foldtext=lsp#ui#vim#folding#foldtext()


let g:lsp_diagnostics_enabled = 0
let g:lsp_diagnostics_echo_cursor = 0

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 0

set completeopt=menuone,noinsert,noselect,preview

autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif


