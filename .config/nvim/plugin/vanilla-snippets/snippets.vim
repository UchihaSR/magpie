""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             SASS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au ac   FileType sass inoremap    ;bc          background-color:

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au ac  FileType markdown,vimwiki    inoremap    `       ```<cr>```<up><right><right><right>
au ac  FileType markdown,vimwiki    inoremap    ;s     &nbsp;
au ac  FileType markdown,vimwiki    inoremap    ;f     \frac{}{<*>}<esc>5ji

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Text & Markdown
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" au ac FileType text,markdown inoremap . .<cr>

au ac FileType markdown inoremap ;i ![](/preview)

au ac   FileType text     inoremap    ;b          <Esc>80i-<Esc>o<Esc>80i-<Esc>O-<Esc>30a<space><Esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Groff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au ac   FileType groff,nroff inoremap ;b <Esc>40i\"<Esc>o<Esc>40i\"<Esc>O\"<Esc>30a<space><Esc>i
