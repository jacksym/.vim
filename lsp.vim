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
    nmap <buffer> <M-K> <plug>(lsp-previous-error)
    nmap <buffer> <M-J> <plug>(lsp-next-error)


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


