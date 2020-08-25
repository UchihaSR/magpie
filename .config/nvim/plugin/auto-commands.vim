" Updates the buffer if changed elsewhere
au ac FocusGained,BufEnter * checktime
" Clean Junk files after quitting
au ac VimLeave *.tex !compile --clean %
" Vertically center document when entering insert mode
au ac InsertEnter * norm zz
" Disables automatic commenting on newline:
au ac FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set spelling for certain filetypes
au ac FileType markdown,groff,tex setlocal spell
au ac BufRead *.sent setlocal spell

" Comment string setup
au ac FileType json     setlocal commentstring=//\%s
au ac FileType sxhkdrc  setlocal commentstring=#\%s
au ac FileType xdefaults  setlocal commentstring=!\%s
au ac FileType markdown setlocal commentstring=<!---\%s\-->

" Filetype setups
au ac BufRead .*profile set filetype=sh
au ac BufRead mutt*     set filetype=muttrc

" Return to the same line you left off at
au ac BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \	execute 'normal! g`"zvzz' |
            \ endif

"===============================================================================
"                             Exp 
"===============================================================================

" " JSON Comment Viewer
" au ac FileType json syntax match Comment +\/\/.\+$+

" au ac BufNewFile,BufRead *.c set formatprg=astyle\ -T9

" Quickly highlight yanked text
" au ac TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 1000)

" au ac BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
" au ac BufRead,BufNewFile *.ms      set filetype=groff
" au ac FileType markdown setlocal commentstring=[//]:\ #\ (\%s\)
" au ac FileType markdown setlocal commentstring=[//]:\ #\ "\%s\"
" au ac FileType xdefaults setlocal commentstring=!\%s
" au ac BufRead,BufNewFile .*profile set filetype=sh

" " Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
" if &diff
"    highlight! link DiffText MatchParen
" endif

" Auto Fold at Startup
" au ac VimEnter * normal zM

" Automatically deletes all trailing whitespace on save.
" au ac BufWritePre * %s/\s\+$//e

" Goyo Fix
" au! ac User GoyoLeave silent! so ~/.config/nvim/init.vim

" au ac BufWritePost */dwmblocks/config.h, */uniBlocks/*     !doas make install && { killall -q dwmblocks;setsid dwmblocks & }


" Vimwiki
" au ac BufRead,BufNewFile /disk/Phone/Notes/*.md set FileType vimwiki

" au ac  BufWritePost    dunstrc                                      silent !killall dunst; dunst & notify-send 'Head' 'Message'
" au ac  BufWritePost    rootincronrc                                 silent !doas incrontab %
" au ac  BufWritePost    rootcronrc                                   silent !doas crontab %
" au ac  BufWritePost    *Xresources,*Xdefaults  					       silent !xrdb %
" au ac  BufWritePost    */termite/config                             silent !killall -USR1 termite
" au ac  BufWritePost    *bashrc                                      silent !source ~/.bashrc
" au ac  BufWritePost    modules.ini,colors.ini                	    silent !pkill -USR1 polybar

" au ac  BufWritePost    bspwmblocks                                 !killall bspwmblocks
" au ac  BufWritePost    yabar.conf                                  silent !killall yabar; yabar &

" au ac  BufWritePost    *.c                     !gcc % && ./a.out
" au ac  BufWritePost    *.c                     silent !$TERMINAL -e sh -c "compile %; read line"

" au ac  BufWritePost    *.rmd,*.Rmd             !Rscript -e "require(rmarkdown); rmarkdown::render('%', quiet=TRUE)"
" au ac  BufWritePost    *.rmd,*.Rmd             !Rscript -e "rmarkdown::render('%', quiet=TRUE)"
