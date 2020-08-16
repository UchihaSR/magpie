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

" au automation  BufWritePost yabar.conf,*/uniblocks/* silent !{killall yabar && sleep 1 && yabar; } &
" au automation  BufWritePost picom.conf    silent !pkill -USR1 picom
