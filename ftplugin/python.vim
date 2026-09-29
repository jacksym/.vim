"Jack Symonds Python

setlocal number
setlocal nowrap
setlocal cursorline

setlocal expandtab




let g:python_dist = exepath('python')
setlocal makeprg=shellescape(g:python_dist)\ %


function! s:python_executables(A, L, P) abort
    let l:candidates = []

    " Adjust / expand this list as desired.
    for l:name in [
        \ 'python',
        \ 'python3',
        \ 'python3.11',
        \ 'python3.12',
        \ 'python3.13',
        \ 'python3.14'
        \ ]

        if executable(l:name)
            let l:path = exepath(l:name)

            if index(l:candidates, l:path) == -1
                call add(l:candidates, l:path)
            endif
        endif
    endfor
    if has("win32") || has("win64")
        let l:execs = [
          \ 'C:\Users\jackj\AppData\Local\Programs\Python\Python314\python.exe',
          \ 'C:\Users\jackj\AppData\Local\Programs\Python\Python313\python.exe',
          \ 'C:\Users\jackj\AppData\Local\Programs\Python\Python310\python.exe',
          \ ]
    elseif has("mac")
    elseif has("unix")
    endif


    return filter(l:candidates, {_, v -> v =~? a:A})
endfunction


function! s:switch_python_dist() abort
    call inputsave()

    let l:python = input(
        \ 'Python distribution: ',
        \ g:python_dist,
        \ 'customlist,<SID>python_executables'
        \ )

    call inputrestore()

    if empty(l:python)
        echo 'Python distribution unchanged'
        return
    endif

    let g:python_dist = l:python

    echo 'Python distribution: ' . g:python_dist

endfunction


command! Py call s:switch_python_dist()
