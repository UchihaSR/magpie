set encoding=utf-8
scriptencoding utf-8

Plug 'dense-analysis/ale'

let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠'
let g:ale_virtualtext_cursor = 1
let g:ale_virtualtext_prefix = '   <--   💡 '
let g:ale_use_global_executables = 1

let g:ale_linters = {
         \   'sh':           ['shellcheck'],
         \   'vim':           ['vint'],
         \   'sass':           ['sasslint'],
         \   'scss':           ['sasslint'],
         \   'javascript':   ['eslint'],
         \   'javascriptreact':   ['eslint'],
         \   'json':   ['jsonlint'],
         \   'typescript':   ['tsserver'],
         \   'typescriptreact':   ['tsserver'],
         \   'text':   ['write-good'],
         \   'c':   ['clang'],
         \   'python':   ['flake8'],
         \   'yaml':   ['yamllint'],
         \}

" \   'python':   ['flake8', 'pylint'],

let g:ale_javascript_eslint_options = '-c ~/.config/eslintrc.json'
" let g:ale_scss_sasslint_options = '-s sass'

" let g:ale_javascript_eslint_options = '--no-eslintrc --env node,browser,es6 --parser-options=ecmaVersion:2020 --parser-options=sourceType:module'

nmap gk <Plug>(ale_previous_wrap)
nmap gl <Plug>(ale_next_wrap)

" nmap ek <Plug>(ale_previous_wrap_error)
" nmap el <Plug>(ale_next_wrap_error)

" highlight ALEErrorSign ctermbg=NONE ctermfg=red
" highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

let g:ale_fixers = {
         \   'json': ['prettier', 'fixjson'],
         \   'sh': ['shfmt'],
         \   'sass': ['prettier'],
         \   'css': ['prettier'],
         \   'scss': ['prettier'],
         \   'html': ['prettier'],
         \   'javascript': ['prettier'],
         \   'yaml': ['prettier'],
         \   'c': ['clang-format'],
         \   'python': ['autopep8'],
         \}
" \   '*': ['remove_trailing_lines', 'trim_whitespace'],
let g:ale_sh_shfmt_options = '-p -i 3 -ci -s -sr'
" let g:ale_c_clangformat_options = '--style=LLVM'
let g:ale_css_stylelint_options = '-s sass --fix'
let g:ale_javascript_prettier_options = '--tab-width 3 --single-quote'
" let g:ale_javascript_prettier_options = '--single-quote'

" let g:ale_fix_on_save = 1
" \   'javascript': ['prettier', 'eslint'],


"" let g:ale_lint_on_insert_leave = 0
"" let g:ale_lint_on_enter = 0

"" let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
"" " \   'jsx':          ['stylelint', 'eslint'],
