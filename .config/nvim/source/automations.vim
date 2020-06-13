au automation  BufWritePost    sxhkdrc              silent !pkill -USR1 sxhkd
au automation  BufWritePost    gebaard.toml         silent !pkill -USR1 gebaard
" au automation  BufWritePost    picom.conf           silent !pkill -USR1 picom
au automation  BufWritePost    cronierc               silent !crontab %
au automation  BufWritePost    anacronrc               silent !anacron -t %
au automation  BufWritePost    fcronrc               silent !fcrontab %
au automation  BufWritePost    incronrc             silent !incrontab %
au automation  BufWritePost    bspwmrc             silent !sh %
au automation  BufWritePost    *.rules					 !doas -- udevadm control --reload

au automation  BufWritePost    *.scss,*.sass        silent !compile %
au automation  BufWritePost    config.h             !compile %
" au automation  BufWritePost    practice.sh          !compile %

au automation  BufWritePost    testy                !sh %
au automation  BufWritePost    *.ms                silent !compile %

au automation  VimLeave    *.c,*.tex   !clean-junk %

" Vertically center document when entering insert mode
au automation  InsertEnter *   norm zz

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
if &diff
   highlight! link DiffText MatchParen
endif

" Disables automatic commenting on newline:
au automation FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

au automation FocusGained,BufEnter * checktime

" Auto Fold at Startup
" au automation VimEnter * normal zM

" Automatically deletes all trailing whitespace on save.
" au automation BufWritePre * %s/\s\+$//e

" Goyo Fix
" au! automation User GoyoLeave silent! so ~/.config/nvim/init.vim

au automation BufWritePost */dwmblocks/config.h, */uniBlocks/*     !doas make install && { killall -q dwmblocks;setsid dwmblocks & }

" JSON Comment Viewer
au automation FileType json syntax match Comment +\/\/.\+$+

au automation BufRead,BufNewFile /tmp/calcurse*,~/.calcurse/notes/* set filetype=markdown

au automation FileType text,markdown,groff setlocal spell

" Vimwiki
" au automation BufRead,BufNewFile /disk/Phone/Notes/*.md set FileType vimwiki

au automation  BufWritePost    dunstrc                                      silent !killall dunst; dunst & notify-send 'Head' 'Message'
" au automation  BufWritePost    rootincronrc                                 silent !doas incrontab %
" au automation  BufWritePost    rootcronrc                                   silent !doas crontab %
" au automation  BufWritePost    *Xresources,*Xdefaults  					       silent !xrdb %
" au automation  BufWritePost    */termite/config                             silent !killall -USR1 termite
" au automation  BufWritePost    *bashrc                                      silent !source ~/.bashrc
" au automation  BufWritePost    modules.ini,colors.ini                	    silent !pkill -USR1 polybar

" au automation  BufWritePost    bspwmblocks                                 !killall bspwmblocks
" au automation  BufWritePost    yabar.conf                                  silent !pkill yabar && yabar &
" au automation  BufWritePost    yabar.conf                                  silent !killall yabar; yabar &

" au automation  BufWritePost    *.c                     !gcc % && ./a.out
" au automation  BufWritePost    *.c                     silent !$TERMINAL -e sh -c "compile %; read line"

" au automation  BufWritePost    *.rmd,*.Rmd             !Rscript -e "require(rmarkdown); rmarkdown::render('%', quiet=TRUE)"
" au automation  BufWritePost    *.rmd,*.Rmd             !Rscript -e "rmarkdown::render('%', quiet=TRUE)"

function ArabicMode()

   set nospell
   set rightleft
   set delcombine
   set arabicshape

   :noremap    ;           h
   :noremap    j           l
   :noremap	   :    	      b
   :noremap	   J    	      e
   :noremap    <leader>;	^
   :noremap    <leader>j	$

   au automation  InsertEnter *   silent !xmodmap $LAYOUT_AR
   au automation  InsertLeave *   silent !xmodmap $LAYOUT_EN

endfunction

au automation BufRead,BufNewFile *.ar.* call ArabicMode()

au automation BufRead,BufNewFile *.ms set filetype=groff
