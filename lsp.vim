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


    "straight VS analog
    nmap <buffer> <S-F12>       <plug>(lsp-call-hierarchy-incoming)        " VS: No exact equivalent listed; nearest is Find All References
    nmap <buffer> <S-F12>       <plug>(lsp-call-hierarchy-outgoing)        " VS: No exact equivalent listed; nearest is Find All References

    nmap <buffer> <C-.>         <plug>(lsp-code-action)                    " VS: Show Quick Actions (Ctrl+.)
    nmap <buffer> <A-CR>        <plug>(lsp-code-action-float)              " VS: Show Quick Actions (Alt+Enter); no distinct floating variant
    nmap <buffer> <A-CR>        <plug>(lsp-code-action-preview)            " VS: Show Quick Actions (Alt+Enter); no distinct preview variant
    nmap <buffer> <C-.>         <plug>(lsp-code-lens)                      " VS: No CodeLens equivalent listed; nearest is Show Quick Actions

    nmap <buffer> <F12>         <plug>(lsp-declaration)                    " VS: No distinct declaration command listed; nearest is Go To Definition
    nmap <buffer> <A-F12>       <plug>(lsp-peek-declaration)               " VS: No distinct declaration command listed; nearest is Peek Definition
    nmap <buffer> <F12>         <plug>(lsp-definition)                     " VS: Go To Definition
    nmap <buffer> <A-F12>       <plug>(lsp-peek-definition)                " VS: Peek Definition

    nmap <buffer> <C-t>         <plug>(lsp-document-symbol)                " VS: Code Search; no document-only symbol command listed
    nmap <buffer> <C-t>         <plug>(lsp-document-symbol-search)         " VS: Code Search; no document-only symbol search listed
    nmap <buffer> <C-\><C-e>    <plug>(lsp-document-diagnostics)           " VS: Activate Error List

    nmap <buffer> <F4>          <plug>(lsp-hover)                          " VS: No hover/Quick Info equivalent listed; nearest listed command is Properties
    nmap <buffer> <F4>          <plug>(lsp-hover-float)                    " VS: No floating-hover equivalent listed; nearest listed command is Properties
    nmap <buffer> <F4>          <plug>(lsp-hover-preview)                  " VS: No hover-preview equivalent listed; nearest listed command is Properties

    nmap <buffer> <F8>          <plug>(lsp-next-diagnostic)                " VS: Go To Next Error
    nmap <buffer> <F8>          <plug>(lsp-next-diagnostic-nowrap)         " VS: Go To Next Error; no nowrap variant listed
    nmap <buffer> <F8>          <plug>(lsp-next-error)                     " VS: Go To Next Error
    nmap <buffer> <F8>          <plug>(lsp-next-error-nowrap)              " VS: Go To Next Error; no nowrap variant listed
    nmap <buffer> <C-S-Down>    <plug>(lsp-next-reference)                 " VS: Go To Next Reference
    nmap <buffer> <F8>          <plug>(lsp-next-warning)                   " VS: No warning-only command listed; nearest is Go To Next Error
    nmap <buffer> <F8>          <plug>(lsp-next-warning-nowrap)            " VS: No warning-only or nowrap command listed; nearest is Go To Next Error

    nmap <buffer> <S-Esc>       <plug>(lsp-preview-close)                  " VS: Close Active Tool Window
    nmap <buffer> <C-Tab>       <plug>(lsp-preview-focus)                  " VS: No preview-focus equivalent listed; nearest is Cycle Through Tabs

    nmap <buffer> <S-F8>        <plug>(lsp-previous-diagnostic)            " VS: Go To Previous Error
    nmap <buffer> <S-F8>        <plug>(lsp-previous-diagnostic-nowrap)     " VS: Go To Previous Error; no nowrap variant listed
    nmap <buffer> <S-F8>        <plug>(lsp-previous-error)                 " VS: Go To Previous Error
    nmap <buffer> <S-F8>        <plug>(lsp-previous-error-nowrap)          " VS: Go To Previous Error; no nowrap variant listed
    nmap <buffer> <C-S-Up>      <plug>(lsp-previous-reference)             " VS: Go To Previous Reference
    nmap <buffer> <S-F8>        <plug>(lsp-previous-warning)               " VS: No warning-only command listed; nearest is Go To Previous Error
    nmap <buffer> <S-F8>        <plug>(lsp-previous-warning-nowrap)        " VS: No warning-only or nowrap command listed; nearest is Go To Previous Error

    nmap <buffer> <S-F12>       <plug>(lsp-references)                     " VS: Find All References
    nmap <buffer> <C-r><C-r>    <plug>(lsp-rename)                         " VS: Rename

    nmap <buffer> <C-t>         <plug>(lsp-workspace-symbol)               " VS: Code Search
    nmap <buffer> <C-t>         <plug>(lsp-workspace-symbol-search)        " VS: Code Search

    nmap <buffer> <C-k><C-d>    <plug>(lsp-document-format)                " VS: Format Document
    nmap <buffer> <C-k><C-d>    <plug>(lsp-document-format)                " VS: Format Document
    nmap <buffer> <C-k><C-f>    <plug>(lsp-document-range-format)          " VS: Format Selection
    nmap <buffer> <C-k><C-f>    <plug>(lsp-document-range-format)          " VS: Format Selection

    nmap <buffer> <C-F12>       <plug>(lsp-implementation)                 " VS: Go To Implementation
    nmap <buffer> <A-F12>       <plug>(lsp-peek-implementation)            " VS: No Peek Implementation shortcut listed; nearest is Peek Definition

    nmap <buffer> <A-Home>      <plug>(lsp-type-definition)                " VS: No Go To Type Definition listed; nearest is Go To Base Class
    nmap <buffer> <A-F12>       <plug>(lsp-peek-type-definition)           " VS: No Peek Type Definition listed; nearest is Peek Definition
    nmap <buffer> <A-Home>      <plug>(lsp-type-hierarchy)                 " VS: No full type hierarchy listed; Go To Base Class covers one direction

    nmap <buffer> <C-q>         <plug>(lsp-status)                         " VS: No LSP-status equivalent listed; nearest general command is Feature Search
    nmap <buffer> <C-S-Space>   <plug>(lsp-signature-help)                 " VS: Show Signature Help


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


