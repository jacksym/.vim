"Jack Symonds C++

setlocal nowrap
setlocal number

noremap <buffer> <leader>c :w<CR>:!g++ % && ./a.out<CR>
setlocal colorcolumn=80
