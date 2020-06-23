au automation FileType tex inoremap ;boi  <Esc>:read ~/.config/nvim/templates/latex_boiler.tex<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Headers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;dc \documentclass[]{<*>}<cr><*><esc>kf[a

au automation FileType tex inoremap ;up \usepackage[]{<*>}<cr><*><esc>kf[a
au automation FileType tex inoremap ;upfs \usepackage{fontspec}<cr>

au automation FileType tex inoremap ;bd \begin{document}<cr><cr><cr><cr>\end{document}<esc>kki

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Sections 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;se \section*{}<cr><*><esc>kf{a
au automation FileType tex inoremap ;ss \subsection*{}<cr><*><esc>kf{a
au automation FileType tex inoremap ;sS \subsubsection*{}<cr><*><esc>kf{a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Lists 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;ul \begin{itemize}<cr><cr>\end{itemize}<esc>k
au automation FileType tex inoremap ;ol \begin{enumerate}<cr><cr>\end{enumerate}<esc>k
au automation FileType tex inoremap ;i  \item

au automation FileType tex inoremap ;smf \setmainfont{}<left>

