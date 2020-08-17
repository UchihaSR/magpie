" let fixer_prefix = '%!'

" au ac BufWritePost
"             \ *.json let fixer = 'prettier --parser json --tab-width 3'
" au ac BufWritePost
"             \ *.tex let fixer = 'latexindent'
" au ac BufWritePost
"             \ *.yml let fixer = 'prettier --parser yaml --tab-width 3'
" au ac BufWritePost
"             \ *.md let fixer = 'prettier --parser markdown --tab-width 3'
" au ac BufWritePost
"             \ *.html let fixer = 'prettier --parser html --tab-width 3'
" au ac BufWritePost
"             \ *.sh let fixer = 'shfmt -p -i 3 -ci -s -sr'
" au ac BufWritePost
"             \ *.c,*.h let fixer = 'clang-format -style="{BasedOnStyle: google, IndentWidth: 3}"'
" au ac BufWritePost
"             \ *.js let fixer = '%!prettier --parser babel --tab-width 3 --single-quote --loglevel error'

" au ac BufWritePost *.sh,*.c,*.h,*.md,*.html,*.yml,*.tex,*.json
"             \ exec "normal! ma" |
"             \ silent exec fixer_prefix fixer |
"             \ exec "normal! `azz" |
"             \ exec "silent update"

" au ac BufWritePost *.sh :!shfmt -p -i 3 -ci -s -sr %<cr>

" Bind w to save
nnoremap <silent>w :silent wa<cr>

" Bind w to autofixing for certain files
au ac FileType c,cpp,sh,tex,html,json,yaml,javascript
            \ nnoremap <silent>w :silent norm! maG=gg`azz<cr>:silent wa<cr>

" Set fixers according to file types
au ac FileType c,cpp set equalprg=clang-format\ -style=\"{BasedOnStyle:\ webkit,\ IndentWidth:\ 3}\"
au ac FileType sh set equalprg=shfmt\ -p\ -i\ 3\ -ci\ -s\ -sr
au ac FileType markdown set equalprg=prettier\ --parser\ markdown\ --tab-width\ 3
au ac FileType tex set equalprg=latexindent
au ac FileType html set equalprg=prettier\ --parser\ html\ --tab-width\ 3
au ac FileType json set equalprg=prettier\ --parser\ json\ --tab-width\ 3
au ac FileType yaml set equalprg=prettier\ --parser\ yaml\ --tab-width\ 3
au ac FileType javascript set  equalprg=prettier\ --parser\ babel\ --tab-width\ 3\ --single-quote\ --loglevel\ error

" au ac FileType c nnoremap <cr> 
"             \ma
"             \:%s/[^{}>;/]$/&;/e<cr>
"             \:%s/.h";/.h"/e<cr>
"             \:silent norm! G=gg`azz<cr>:silent wa<cr>
