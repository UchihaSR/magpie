au ac FileType tex inoremap ;; <Esc>/<++><CR>"_c4l

au ac FileType tex inoremap ;T  <Esc>:read ~/.config/nvim/templates/latex_boiler.tex<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Seperators
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au ac FileType tex inoremap ;b %<esc>79a=<esc>yypO%<esc>30a<space><Esc>i
au ac FileType tex inoremap ;B %<esc>39a-<esc>yypO%<esc>15a<space><Esc>i

au ac FileType tex inoremap ;s <Esc>80i%<Esc>o
au ac FileType tex inoremap ;S <Esc>40i%<Esc>o

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Headers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au ac FileType tex inoremap ;dc \documentclass[]{<++>}<cr><++><esc>kf[a

au ac FileType tex inoremap ;up \usepackage[]{<++>}<cr><++><esc>kf[a
au ac FileType tex inoremap ;upfs \usepackage{fontspec}<cr>

au ac FileType tex inoremap ;zbd \begin{document}<cr><cr><cr><cr>\end{document}<esc>kki

au ac FileType tex inoremap ;zsmf \setmainfont{}<left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au ac FileType tex inoremap ;zs \section*{}<cr><++><esc>kf{a
au ac FileType tex inoremap ;zss \subsection*{}<cr><++><esc>kf{a
au ac FileType tex inoremap ;zsss \subsubsection*{}<cr><++><esc>kf{a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             List
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au ac FileType tex inoremap ;ul \begin{itemize}<cr><cr>\end{itemize}<esc>k
au ac FileType tex inoremap ;ol \begin{enumerate}<cr><cr>\end{enumerate}<esc>k
au ac FileType tex inoremap ;i  \item

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""";
"                             Table
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au ac FileType tex inoremap ;zt  \begin{tabular}{}<cr>\end{tabular}<up><esc>f{a
