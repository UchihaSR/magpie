scriptencoding utf-8

Plug 'neomake/neomake'

    let g:neomake_c_gcc_maker = {
        \ 'exe': 'gcc',
        \ 'args': [ '-std=c11', '-D_POSIX_C_SOURCE=200809L', '-Wall', '-Wextra', '-pedantic', '-O2' ]
        \ }
    let g:neomake_c_enabled_makers = [ 'gcc']
    " let g:neomake_cpp_enabled_makers = [ 'gcc']
    au ac CursorHold *.c,*.h Neomake

    au ac CursorHold *.sh,*.vim Neomake

"===============================================================================
"                             Styles 
"===============================================================================

        let g:neomake_error_sign = {
                \ 'text': '❌',
                \ 'texthl': 'NeomakeErrorSign',
                \ }
        let g:neomake_warning_sign = {
            \   'text': '⚠',
            \   'texthl': 'NeomakeWarningSign',
            \ }
        let g:neomake_message_sign = {
            \   'text': '➤',
            \   'texthl': 'NeomakeMessageSign',
            \ }
        let g:neomake_info_sign = {
            \ 'text': 'ℹ',
            \ 'texthl': 'NeomakeInfoSign'
            \ }

