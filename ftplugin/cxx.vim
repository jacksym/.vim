"Jack Symonds C/C++

setlocal syntax=cpp

setlocal nowrap
setlocal number


setlocal colorcolumn=80

setlocal cursorline

let g:source_dir = ''
let g:build_dir = ''

" compile_commands.json
" cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=1
" cmake -S . -B build -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=1



function! DisplayProjectInfo()
    echo 'Source Directory: ' . get(g:, 'source_dir', '<unset>')
    echo 'Build Directory: ' . get(g:, 'build_dir', '<unset>')
    echo 'Make Program: ' . &makeprg
endfunction

command! Proj call DisplayProjectInfo()


function! SetSourceDir(path) abort
    let g:source_dir = fnamemodify(a:path, ':p')
    let g:build_dir = ''

    for l:dir in glob(g:source_dir . '*', 0, 1)
        if isdirectory(l:dir) && filereadable(l:dir . '/CMakeCache.txt')
            let g:build_dir = fnamemodify(l:dir, ':p')
            break
        endif
    endfor

    if empty(g:build_dir)
        echohl WarningMsg
        echo 'No CMake build directory found under ' . g:source_dir
        echohl None
        return
    endif

    let &makeprg = 'cmake --build ' . shellescape(g:build_dir)

    echo 'Source: ' . g:source_dir
    echo 'Build:  ' . g:build_dir
endfunction

command! -nargs=1 -complete=dir SourceDir call SetSourceDir(<q-args>)
