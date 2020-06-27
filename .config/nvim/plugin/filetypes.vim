au automation BufRead,BufNewFile .*profile set filetype=sh
au automation FileType markdown,groff,tex setlocal spell

" au automation BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
" au automation BufRead,BufNewFile *.ms      set filetype=groff

au automation FileType json    setlocal commentstring=//\%s
au automation FileType sxhkdrc setlocal commentstring=#\%s
" au automation FileType xdefaults setlocal commentstring=!\%s

au automation FileType markdown setlocal commentstring=<!---\%s\-->
" au automation FileType markdown setlocal commentstring=[//]:\ #\ (\%s\)
" au automation FileType markdown setlocal commentstring=[//]:\ #\ "\%s\"
