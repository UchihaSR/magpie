au automation FileType tex inoremap ;; <Esc>/<++><CR>"_c4l

au automation FileType tex inoremap ;boi  <Esc>:read ~/.config/nvim/templates/latex_boiler.tex<cr>

au automation FileType tex inoremap ;b <Esc>80i%<Esc>o<Esc>80i%<Esc>O%<Esc>30a<space><Esc>i

au automation FileType tex inoremap ;t <Esc>40i%<Esc>o<Esc>40i%<Esc>O%<Esc>15a<space><Esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Headers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;dc \documentclass[]{<++>}<cr><++><esc>kf[a

au automation FileType tex inoremap ;up \usepackage[]{<++>}<cr><++><esc>kf[a
au automation FileType tex inoremap ;upfs \usepackage{fontspec}<cr>

au automation FileType tex inoremap ;bd \begin{document}<cr><cr><cr><cr>\end{document}<esc>kki

au automation FileType tex inoremap ;smf \setmainfont{}<left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Sections 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;se \section*{}<cr><++><esc>kf{a
au automation FileType tex inoremap ;ss \subsection*{}<cr><++><esc>kf{a
au automation FileType tex inoremap ;sS \subsubsection*{}<cr><++><esc>kf{a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Lists 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType tex inoremap ;ul \begin{itemize}<cr><cr>\end{itemize}<esc>k
au automation FileType tex inoremap ;ol \begin{enumerate}<cr><cr>\end{enumerate}<esc>k
au automation FileType tex inoremap ;i  \item


