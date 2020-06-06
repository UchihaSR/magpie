""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Vim 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation   FileType vim     inoremap    ;b          <Esc>80i"<Esc>o<Esc>80i"<Esc>O"<Esc>30a<space><Esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Javascript 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation   FileType javascript     inoremap    ;b          <Esc>40i//<Esc>o<Esc>40i//<Esc>O//<Esc>30a<space><Esc>i

au automation   FileType javascript     inoremap    ;;          <Esc>/<++><CR>"_c4l

au automation   FileType javascript     inoremap    ==          === 

" au automation   FileType javascript     inoremap    ;r          <esc>:0r ~/.config/nvim/templates/react.js<cr>i

au automation   FileType javascript     inoremap    ;cl         console.log()<Left>
au automation   FileType javascript     inoremap    $           ${}<Left>
" au automation   FileType javascript     inoremap    ;r          const  = require('<++>')<esc>06li
au automation   FileType javascript     inoremap    ;i          import  from '<++>'<esc>11hi
au automation   FileType javascript     inoremap    ;a          () => <++><Esc>F(a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             SASS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation   FileType sass inoremap    ;bc          background-color: 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Latex 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation  FileType tex    inoremap    ;dc                \documentclass[]{<*>}<cr><*><esc>kf[a
au automation  FileType tex    inoremap    ;up                \usepackage[]{<*>}<cr><*><esc>kf[a
au automation  FileType tex    inoremap    ;be                \begin{document}<cr><cr><cr><cr>\end{document}<esc>kki
au automation  FileType tex    inoremap    ;se                \section*{}<cr><*><esc>kf{a
au automation  FileType tex    inoremap    ;ss                \subsection*{}<cr><*><esc>kf{a
au automation  FileType tex    inoremap    ;sS                \subsubsection*{}<cr><*><esc>kf{a
au automation  FileType tex    inoremap    ;ul                \begin{itemize}<cr><cr>\end{itemize}<esc>k
au automation  FileType tex    inoremap    ;ol                \begin{enumerate}<cr><cr>\end{enumerate}<esc>k
au automation  FileType tex    inoremap    ;i                 \item

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Markdown 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation  FileType markdown,vimwiki    inoremap    `       ```<cr>```<up><right><right><right>
au automation  FileType markdown,vimwiki    inoremap    ;s     &nbsp;
au automation  FileType markdown,vimwiki    inoremap    ;f     \frac{}{<*>}<esc>5ji


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Shell 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" au automation FileType    sh,conf      inoremap    ;b          <Esc>60i#<Esc>o<Esc>60i#<Esc>O#<Esc>20a<space><Esc>i
au automation   FileType sh,conf,yaml,sxhkd,zsh     inoremap    ;b          <Esc>80i#<Esc>o<Esc>80i#<Esc>O#<Esc>30a<space><Esc>i

au automation FileType    sh           inoremap    ;s         #!/usr/bin/env sh<cr><cr>

" au automation  FileType sh    inoremap    [     [  ]<left><left>
" au automation  FileType sh    inoremap    $     "$"<left>
" au automation  FileType sh    inoremap    ((     ((  ))<left><left>

" au automation FileType    sh           inoremap    ;hd         [ "$1" ] || cat <<-EOF && exit<cr>Usage:<cr><cr>EOF<esc>k<tab>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             C 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation   FileType c     inoremap    ;b          <Esc>40i//<Esc>o<Esc>40i//<Esc>O//<Esc>30a<space><Esc>i
au automation   FileType c     inoremap    ;p          printf("");<left><left><left>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Text & Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType text,markdown inoremap . .<cr>

au automation FileType markdown inoremap ;i ![](/preview)

