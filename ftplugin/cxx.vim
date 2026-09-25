"Jack Symonds C/C++

setlocal syntax=cpp

setlocal nowrap
setlocal number


setlocal colorcolumn=80

setlocal cursorline

let g:source_dir = ''
let g:build_dir = ''

setlocal makeprg=cmake\ --build g:build_dir

" compile_commands.json
" cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1
" cmake -S . -B build -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=1



function! DisplayProjectInfo()
    echo 'Source Directory: ' . get(g:, 'source_dir', '<unset>')
    echo 'Build Directory: ' . get(g:, 'build_dir', '<unset>')
    echo 'Make Program: ' . &makeprg
endfunction

command! Proj call DisplayProjectInfo()
