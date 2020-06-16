au automation BufRead,BufNewFile .*profile set filetype=sh
au automation BufRead,BufNewFile *.ms      set filetype=groff

au automation FileType markdown,groff,tex setlocal spell

" au automation BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
