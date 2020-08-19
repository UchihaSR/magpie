     " _      _       _____
    " / \    | |     | ____|
   " / _ \   | |     |  _|
  " / ___ \  | |___  | |___
 " /_/   \_\ |_____| |_____|

set encoding=utf-8
scriptencoding utf-8

Plug 'dense-analysis/ale'

    let g:ale_linters_explicit = 1
    let g:ale_lint_on_text_changed = 'never'
    let g:ale_sign_error = '❌'
    let g:ale_sign_warning = '⚠'
    let g:ale_virtualtext_cursor = 1
    let g:ale_virtualtext_prefix = '💡 '
    " let g:ale_virtualtext_prefix = '   <--   💡 '
    let g:ale_use_global_executables = 1
    let g:ale_sign_column_always = 1
    let g:ale_lint_delay = 1000

    let g:ale_linters = {
                \   'c':   ['gcc'],
                \   'groff':   ['write-good'],
                \   'markdown':   ['write-good'],
                \   'python':   ['flake8'],
                \   'javascript':   ['eslint'],
                \   'javascriptreact':   ['eslint'],
                \   'javascript.jsx':   ['eslint'],
                \   'json':   ['jsonlint'],
                \   'lua':   ['luac'],
                \   'sh':           ['shellcheck'],
                \   'tex':   ['chktex', 'lacheck'],
                \   'vim':           ['vint'],
                \   'yaml':   ['yamllint'],
                \   'dart':   ['dartanalyzer'],
                \}
                " \   'nroff':   ['write-good'],
                " \   'sass':           ['sasslint'],
                " \   'scss':           ['sasslint'],
                " \   'typescript':   ['tsserver'],
                " \   'typescriptreact':   ['tsserver'],
                " \   'html':   ['htmlhint'],
                " \   'c':   ['ccls'],
                " \   'c':   ['clang'],
                " \   'lua':   ['luacheck'],
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

    "===============================================================================
    "                             Fixers
    "===============================================================================

    " let g:ale_fixers = {
    "             \   'css': ['prettier'],
    "             \   'html': ['prettier'],
    "             \   'javascript': ['prettier'],
    "             \   'json': ['prettier', 'fixjson'],
    "             \   'markdown': ['prettier'],
    "             \   'python': ['autopep8'],
    "             \   'sass': ['prettier'],
    "             \   'scss': ['prettier'],
    "             \   'yaml': ['prettier'],
    "             \   '*': ['remove_trailing_lines', 'trim_whitespace'],
    "             \}
    "             " \   'sh': ['shfmt'],
    "             " \   'c': ['clang-format'],

    " let g:ale_sh_shfmt_options = '-p -i 4 -ci -s -sr'
    " let g:ale_c_clangformat_options = '--style=LLVM'
    " let g:ale_css_stylelint_options = '-s sass --fix'
    " let g:ale_javascript_prettier_options = '--tab-width 3 --single-quote'
    " let g:ale_javascript_prettier_options = '--single-quote'

    " let g:ale_fix_on_save = 1

    " let g:ale_fix_on_save_ignore = {
    "          \   'c': ['clang-format'],
    "          \   'css': ['prettier'],
    "          \   'html': ['prettier'],
    "          \   'python': ['autopep8'],
    "          \   'sass': ['prettier'],
    "          \   'scss': ['prettier'],
    "          \}

    " \   'javascript': ['prettier', 'eslint'],


    "" let g:ale_lint_on_insert_leave = 0
    "" let g:ale_lint_on_enter = 0

    "" let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
    "" " \   'jsx':          ['stylelint', 'eslint'],
    " au ac Filetype * nmap <leader>p :ALEFix<cr>
