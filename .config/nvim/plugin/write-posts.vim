" au automation  BufWritePost picom.conf    silent !pkill -USR1 picom

au automation  BufWritePost *xmodmap*     silent !xmodmap %
au automation  BufWritePost sxhkdrc       silent !pkill -USR1 sxhkd
au automation  BufWritePost gebaard.toml  silent !pkill -USR1 gebaard
au automation  BufWritePost bspwmrc       silent !sh %
au automation  BufWritePost *.rules       !doas -- udevadm control --reload
au automation  BufWritePost cronierc      !crontab %
au automation  BufWritePost dunstrc       silent !killall dunst && dunst & notify-send -i "$ICONS"/bell.png 'Head' 'Message'

au automation  BufWritePost *.scss,*.sass,*.ms   silent !compile %
au automation  BufWritePost config.h             !compile %

au automation  BufWritePost    test.sh              !sh %
au automation  BufWritePost    test.py              !python %

" au automation  BufWritePost yabar.conf,*/uniblocks/* silent !{killall yabar && sleep 1 && yabar; } &

" au automation  BufWritePost yabar.conf,*/uniblocks/* silent !{killall yabar && sleep 1 && yabar; } &
