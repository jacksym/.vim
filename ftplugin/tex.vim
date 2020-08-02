"Jack Symonds LaTeX commands

setlocal wrap
setlocal linebreak

noremap <buffer> <leader>t :w<CR>:!pdflatex -output-directory ~/Desktop/latexPDFs % && open -a Preview<CR><CR>

noremap <buffer> <leader>o ^y%o<Esc>p^lciwend<Esc>O
