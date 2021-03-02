"Jack Symonds LaTeX commands

setlocal wrap
setlocal linebreak
setlocal nosmartindent
setlocal noautoindent
"let b:filename = expand('%:p')

"noremap <buffer> <leader>T :w<CR>:!pdflatex -output-directory ~/Desktop/latexPDFs %<CR><CR>
noremap <buffer> <leader>t :w<CR>:!pdflatex %<CR>
noremap <buffer> <leader>w :w<CR>:!texcount % \| grep "Words in text"<CR>
"let s:filetitle = expand('%:r')
noremap <buffer> <leader>b :w<CR>:!bibtex %:r<CR> 
noremap <buffer> j gj
noremap <buffer> k gk

noremap <buffer> <leader>o ^y%o<Esc>p^lciwend<Esc>O
