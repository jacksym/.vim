"Jack Symonds Table Plugin

setlocal cursorline
setlocal tabstop=10 softtabstop=10
setlocal shiftwidth=10
setlocal nowrap
nnoremap <buffer> h F<Tab>B
nnoremap <buffer> l f<Tab>W
nnoremap <buffer> x ciw0<Esc>
nnoremap <buffer> s ciw
