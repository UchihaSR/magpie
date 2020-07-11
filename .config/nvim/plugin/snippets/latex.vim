au automation FileType tex inoremap ;; <Esc>/<++><CR>"_c4l

au automation FileType tex inoremap ;T  <Esc>:read ~/.config/nvim/templates/latex_boiler.tex<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Seperators
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;b %<esc>79a=<esc>yypO%<esc>30a<space><Esc>i
au automation FileType tex inoremap ;B %<esc>39a-<esc>yypO%<esc>15a<space><Esc>i

au automation FileType tex inoremap ;s <Esc>80i%<Esc>o
au automation FileType tex inoremap ;S <Esc>40i%<Esc>o

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Headers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;dc \documentclass[]{<++>}<cr><++><esc>kf[a

au automation FileType tex inoremap ;up \usepackage[]{<++>}<cr><++><esc>kf[a
au automation FileType tex inoremap ;upfs \usepackage{fontspec}<cr>

au automation FileType tex inoremap ;zbd \begin{document}<cr><cr><cr><cr>\end{document}<esc>kki

au automation FileType tex inoremap ;zsmf \setmainfont{}<left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Section
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;zs \section*{}<cr><++><esc>kf{a
au automation FileType tex inoremap ;zss \subsection*{}<cr><++><esc>kf{a
au automation FileType tex inoremap ;zsss \subsubsection*{}<cr><++><esc>kf{a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             List
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;ul \begin{itemize}<cr><cr>\end{itemize}<esc>k
au automation FileType tex inoremap ;ol \begin{enumerate}<cr><cr>\end{enumerate}<esc>k
au automation FileType tex inoremap ;i  \item

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""";
"                             Table
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;zt  \begin{tabular}{}<cr>\end{tabular}<up><esc>f{a
