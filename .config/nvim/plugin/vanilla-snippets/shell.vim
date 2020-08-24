" au ac FileType sh,conf,yaml,sxhkd,zsh,python,muttrc,tmux inoremap ;b <Esc>80i#<Esc>o<Esc>80i#<Esc>O#<Esc>30a<space><Esc>i
" au ac FileType sh,conf,yaml,sxhkd,zsh,python,muttrc,tmux inoremap ;B <Esc>40i#<Esc>o<Esc>40i#<Esc>O#<Esc>15a<space><Esc>i

" au ac FileType    sh           inoremap    ;s         #!/usr/bin/env sh<cr><cr>

" au ac  FileType sh    inoremap    [     [  ]<left><left>
" au ac  FileType sh    inoremap    $     "$"<left>
" au ac  FileType sh    inoremap    ((     ((  ))<left><left>

" au ac FileType    sh           inoremap    ;hd         [ "$1" ] || cat <<-EOF && exit<cr>Usage:<cr><cr>EOF<esc>k<tab>

au ac FileType sh,conf,yaml,sxhkdrc,zsh,python,muttrc,tmux,make inoremap ;b #<esc>79a=<esc>yypO#<esc>30a<space><Esc>i
au ac FileType sh,conf,yaml,sxhkdrc,zsh,python,muttrc,tmux,make inoremap ;B #<esc>39a-<esc>yypO#<esc>15a<space><Esc>i

au ac FileType sh inoremap ;o  <Esc>:read ~/.config/nvim/templates/options.sh<cr>
au ac FileType sh inoremap ;go  <Esc>:read ~/.config/nvim/templates/getopts.sh<cr>

au ac FileType sh inoremap ( ()<left>
" au ac FileType sh inoremap ( () {<cr>}<esc>O
