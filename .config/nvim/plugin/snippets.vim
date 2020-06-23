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
"                             Markdown 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation  FileType markdown,vimwiki    inoremap    `       ```<cr>```<up><right><right><right>
au automation  FileType markdown,vimwiki    inoremap    ;s     &nbsp;
au automation  FileType markdown,vimwiki    inoremap    ;f     \frac{}{<*>}<esc>5ji


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Shell 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" au automation FileType    sh           inoremap    ;s         #!/usr/bin/env sh<cr><cr>

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

" au automation FileType text,markdown inoremap . .<cr>

au automation FileType markdown inoremap ;i ![](/preview)

au automation   FileType text     inoremap    ;b          <Esc>80i-<Esc>o<Esc>80i-<Esc>O-<Esc>30a<space><Esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Groff 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation   FileType groff,nroff inoremap ;b <Esc>40i\"<Esc>o<Esc>40i\"<Esc>O\"<Esc>30a<space><Esc>i

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Python 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

au automation FileType sh,conf,yaml,sxhkd,zsh,python inoremap ;b <Esc>79i#<Esc>o<Esc>79i#<Esc>O#<Esc>30a<space><Esc>i

au automation FileType python inoremap ;p print()<left>


