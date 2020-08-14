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
