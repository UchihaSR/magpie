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

" Bind w to save
nnoremap <silent>w :silent wa<cr>

" Bind w to autofixing for certain files
au automation FileType c,cpp,sh,tex,html,json,yaml,javascript
            \ nnoremap <silent>w :silent norm! maG=gg`azz<cr>:silent wa<cr>

" Set fixers according to file types
au automation FileType c,cpp set equalprg=clang-format\ -style=\"{BasedOnStyle:\ google,\ IndentWidth:\ 3}\"
au automation FileType sh set equalprg=shfmt\ -p\ -i\ 3\ -ci\ -s\ -sr
au automation FileType markdown set equalprg=prettier\ --parser\ markdown\ --tab-width\ 3
au automation FileType tex set equalprg=latexindent\ -s
au automation FileType html set equalprg=prettier\ --parser\ html\ --tab-width\ 3
au automation FileType json set equalprg=prettier\ --parser\ json\ --tab-width\ 3
au automation FileType yaml set equalprg=prettier\ --parser\ yaml\ --tab-width\ 3
au automation FileType javascript set  equalprg=prettier\ --parser\ babel\ --tab-width\ 3\ --single-quote\ --loglevel\ error

" au automation FileType c nnoremap <cr> 
"             \ma
"             \:%s/[^{}>;/]$/&;/e<cr>
"             \:%s/.h";/.h"/e<cr>
"             \:silent norm! G=gg`azz<cr>:silent wa<cr>
