au automation BufWritePost *xmodmap*     silent !xmodmap %
au automation BufWritePost sxhkdrc       silent !pkill -USR1 sxhkd
au automation BufWritePost gebaard.toml  silent !pkill -USR1 gebaard
au automation BufWritePost bspwmrc       silent !sh %
au automation BufWritePost *.rules       silent !doas -- udevadm control --reload
au automation BufWritePost cronierc      silent !crontab %
au automation BufWritePost fcronrc      silent !fcrontab %
" au automation BufWritePost anacronrc     silent !anacrontab -t %
au automation BufWritePost dunstrc
            \ silent !killall dunst && dunst & notify-send -i "$ICONS"/bell.png 'Head' 'Message'
au automation BufWritePost tmux*.conf
            \ silent !tmux source ~/.config/tmux/tmux.conf
au automation  BufWritePost yabar.conf,uniblocks*,panel.sh
            \ silent !{killall yabar && sleep 1 && yabar; } &

au automation  BufWritePost *.scss,*.sass,*.ms,*.sh,*.c,*.h silent !compile %

au automation BufWritePost test.sh !sh %
au automation BufWritePost test.py !python %
" au automation BufWritePost test.c  silent !compile %

au automation FileType tex nnoremap <leader><cr> :w \| silent !compile %<cr>

"===============================================================================
"                             Fixers 
"===============================================================================

au automation BufWritePost *.sh
            \ exec "normal! ma" |
            \ silent exec "%!shfmt -p -i 3 -ci -s -sr" |
            \ exec "normal! `azz"

au automation BufWritePost *.c,*.h
            \ exec "normal! ma" |
            \ silent exec '%!clang-format -style="{BasedOnStyle: google, IndentWidth: 3}"' | exec "normal! `azz"

au automation BufWritePost *.html
            \ exec "normal! ma" |
            \ silent exec "%!prettier --parser html --tab-width 3" |
            \ exec "normal! `azz"

au automation BufWritePost *.md
            \ exec "normal! ma" |
            \ silent exec "%!prettier --parser markdown --tab-width 3" |
            \ exec "normal! `a"

au automation BufWritePost *.yml
            \ exec "normal! ma" |
            \ silent exec "%!prettier --parser yaml --tab-width 3" |
            \ exec "normal! `a"

au automation BufWritePost *.tex
            \ exec "normal! ma" |
            \ silent exec "%!latexindent" |
            \ exec "normal! `a"

au automation BufWritePost *.json
            \ exec "normal! ma" |
            \ silent exec "%!prettier --parser json --tab-width 3" |
            \ exec "normal! `a"

" au automation BufWritePost *.js
"             \ exec "normal! ma" |
"             \ silent exec "%!prettier --parser babel --tab-width 3 --single-quote --loglevel error" |
"             \ exec "normal! `a"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" au automation  BufWritePost yabar.conf,*/uniblocks/* silent !{killall yabar && sleep 1 && yabar; } &
" au automation  BufWritePost picom.conf    silent !pkill -USR1 picom
