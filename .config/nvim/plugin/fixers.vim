let fixer_prefix = '%!'

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

au automation BufWritePost *.sh,*.c,*.h,*.md,*.html,*.yml,*.tex,*.json
            \ exec "normal! ma" |
            \ silent exec fixer_prefix fixer |
            \ exec "normal! `azz" |
            \ exec "silent update"
