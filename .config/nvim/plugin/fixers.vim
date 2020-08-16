" let fixer_prefix = '%!'

" au automation BufWritePost
"             \ *.json let fixer = 'prettier --parser json --tab-width 3'
" au automation BufWritePost
"             \ *.tex let fixer = 'latexindent'
" au automation BufWritePost
"             \ *.yml let fixer = 'prettier --parser yaml --tab-width 3'
" au automation BufWritePost
"             \ *.md let fixer = 'prettier --parser markdown --tab-width 3'
" au automation BufWritePost
"             \ *.html let fixer = 'prettier --parser html --tab-width 3'
" au automation BufWritePost
"             \ *.sh let fixer = 'shfmt -p -i 3 -ci -s -sr'
" au automation BufWritePost
"             \ *.c,*.h let fixer = 'clang-format -style="{BasedOnStyle: google, IndentWidth: 3}"'
" au automation BufWritePost
"             \ *.js let fixer = '%!prettier --parser babel --tab-width 3 --single-quote --loglevel error'

" au automation BufWritePost *.sh,*.c,*.h,*.md,*.html,*.yml,*.tex,*.json
"             \ exec "normal! ma" |
"             \ silent exec fixer_prefix fixer |
"             \ exec "normal! `azz" |
"             \ exec "silent update"

" au automation BufWritePost *.sh :!shfmt -p -i 3 -ci -s -sr %<cr>

au automation BufRead *.c,*.h set equalprg=clang-format\ -style=\"{BasedOnStyle:\ google,\ IndentWidth:\ 3}\"
au automation BufRead *.sh set equalprg=shfmt\ -p\ -i\ 3\ -ci\ -s\ -sr
au automation BufRead *.md set equalprg=prettier\ --parser\ markdown\ --tab-width\ 3
au automation BufRead *.tex set equalprg=latexindent\ -s
au automation BufRead *.html set equalprg=prettier\ --parser\ html\ --tab-width\ 3
au automation BufRead *.json set equalprg=prettier\ --parser\ json\ --tab-width\ 3
au automation BufRead *.yml set equalprg=prettier\ --parser\ yaml\ --tab-width\ 3
" au automation BufRead *.js set equalprg=prettier\ --parser\ babel\ --tab-width\ 3\ --single-quote\ --loglevel\ error

nnoremap <silent><cr> :silent norm! maG=gg`azz<cr>:silent wa<cr>
