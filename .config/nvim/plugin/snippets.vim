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
"                             Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation  FileType markdown,vimwiki    inoremap    `       ```<cr>```<up><right><right><right>
au automation  FileType markdown,vimwiki    inoremap    ;s     &nbsp;
au automation  FileType markdown,vimwiki    inoremap    ;f     \frac{}{<*>}<esc>5ji

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Text & Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" au automation FileType text,markdown inoremap . .<cr>

au automation FileType markdown inoremap ;i ![](/preview)

au automation   FileType text     inoremap    ;b          <Esc>80i-<Esc>o<Esc>80i-<Esc>O-<Esc>30a<space><Esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Groff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation   FileType groff,nroff inoremap ;b <Esc>40i\"<Esc>o<Esc>40i\"<Esc>O\"<Esc>30a<space><Esc>i
