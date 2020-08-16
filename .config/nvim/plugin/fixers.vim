let fixer_prefix = '%!'
" let fixer_postfix = '> /dev/null 2>&1'

au automation BufWritePost
            \ *.json let fixer = 'prettier --parser json --tab-width 3'
au automation BufWritePost
            \ *.tex let fixer = 'latexindent'
au automation BufWritePost
            \ *.yml let fixer = 'prettier --parser yaml --tab-width 3'
au automation BufWritePost
            \ *.md let fixer = 'prettier --parser markdown --tab-width 3'
au automation BufWritePost
            \ *.html let fixer = 'prettier --parser html --tab-width 3'
au automation BufWritePost
            \ *.sh let fixer = 'shfmt -p -i 3 -ci -s -sr'
au automation BufWritePost
            \ *.c,*.h let fixer = 'clang-format -style="{BasedOnStyle: google, IndentWidth: 3}"'
au automation BufWritePost
            \ *.js let fixer = '%!prettier --parser babel --tab-width 3 --single-quote --loglevel error'

" au automation BufWritePost *.sh,*.c,*.h,*.md,*.html,*.yml,*.tex,*.json
"             \ exec "normal! ma" |
"             \ silent exec fixer_prefix fixer |
"             \ exec "normal! `azz" |
"             \ exec "silent update"

" au automation BufWritePost *.sh :!shfmt -p -i 3 -ci -s -sr %<cr>

" au automation BufNewFile,BufRead *.c set formatprg=astyle\ -T2\ -p
au automation BufRead *.c set
            \ equalprg=clang-format\ -style=\"{BasedOnStyle:\ google,\ IndentWidth:\ 6}\"

" au automation BufWritePost *.c
"             \ exec "normal! ma" |
"             \ exec "normal! G=gg" |
"             \ exec "normal! `azz" |
"             \ exec "silent update"

nnoremap <silent><cr> 
            \ :silent update<cr>
            \ :normal gg<cr>
"             \ norm! G=gg
