au ac BufWritePost *xmodmap*     silent !xmodmap %
au ac BufWritePost gebaard.toml  silent !pkill -USR1 gebaard
au ac BufWritePost fcronrc      silent !fcrontab %
au ac BufWritePost dunstrc
            \ silent !killall dunst && dunst & notify-send -i "$ICONS"/bell.png 'Head' 'Message'
au ac BufWritePost tmux*.conf
            \ silent !tmux source ~/.config/tmux/tmux.conf
au ac BufWritePost *.dart silent !tmux send -t- r

" au ac BufWritePost */dwm/*.h,*/dwm/*.c silent !{ compile %; sleep 2;  pkill dwm; } &

" Autocompile
au ac BufWritePost *.scss,*.sass,*.ms,*.sh,*.c,*.h
            \ silent !compile %

"===============================================================================
"                             Exp 
"===============================================================================

" au ac  BufWritePost *uniblocks*,*/panel.sh
"             \ silent !{killall uniblocks && sleep 1 && uniblocks -g; } &

" au ac  BufWritePost yabar.conf,*/uniblocks/* silent !{killall yabar && sleep 1 && yabar; } &
" au ac  BufWritePost picom.conf    silent !pkill -USR1 picom
" au ac BufWritePost test.sh !sh %
" au ac BufWritePost test.py !python %
" au ac BufWritePost test.c  silent !compile %
" au ac BufWritePost bspwmrc       silent !sh %
" au ac BufWritePost *.rules       silent !doas -- udevadm control --reload
" au ac BufWritePost cronierc      silent !crontab %
" au ac BufWritePost sxhkdrc       silent !pkill -USR1 sxhkd
" au ac BufWritePost anacronrc     silent !anacrontab -t %
