"--------[ Misc ]--------
" noremap    <leader>c   :Codi!<cr>
" nnoremap    <leader>g   :Goyo<cr>

"" -----------------[ LimeLight ]------------------------------------

"" " Color name (:help cterm-colors) or ANSI code
"" let g:limelight_conceal_ctermfg = 'gray'
"" let g:limelight_conceal_ctermfg = 240

"" " Color name (:help gui-colors) or RGB color
"" let g:limelight_conceal_guifg = 'DarkGray'
"" let g:limelight_conceal_guifg = '#777777'

"" " Default: 0.5
"" let g:limelight_default_coefficient = 0.7

"" " Number of preceding/following paragraphs to include (default: 0)
"" let g:limelight_paragraph_span = 1

"" " Beginning/end of paragraph
"" "   When there's no empty line between the paragraphs
"" "   and each paragraph starts with indentation
"" let g:limelight_bop = '^\s'
"" let g:limelight_eop = '\ze\n^\s'

"" " Highlighting priority (default: 10)
"" "   Set it to -1 not to overrule hlsearch
"" let g:limelight_priority = -1

"---------[ Nerd Commenter ]-------------------

" nnoremap    <leader>m   :call NERDComment(1, 'invert')<cr>
"vmap        <leader>n   :call NERDComment(1, 'invert')<cr>

" let g:multi_cursor_use_default_mapping=0

" " Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'

" nnoremap <leader>t   :Tab /
" vmap     <leader>t   :Tab /

"---------[ Deoplete ]-------------------

 " Use deoplete.
 " let g:deoplete#enable_at_startup = 1

"---------[ Vim-lsp ]-------------------

" let g:lsp_signs_error = {'text': '❌'}
" let g:lsp_signs_warning = {'text': '⚠'}
" let g:lsp_signs_hint = {'text': '💡 '}
" let g:lsp_signs_information = {'text': 'ℹ'}

" let g:lsp_virtual_text_enabled = 1
" let g:lsp_diagnostics_float_cursor = 1

" highlight clear LspWarningLine

" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" set completeopt+=preview

" Javascript
  " au User lsp_setup call lsp#register_server({
  "   \ 'name': 'javascript support using typescript-language-server',
  "   \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
  "   \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'package.json'))},
  "   \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact'],
  "   \ })

" Vimscript
" if executable('vim-language-server')
"   augroup LspVim
"     autocmd!
"     autocmd User lsp_setup call lsp#register_server({
"         \ 'name': 'vim-language-server',
"         \ 'cmd': {server_info->['vim-language-server', '--stdio']},
"         \ 'whitelist': ['vim'],
"         \ 'initialization_options': {
"         \   'vimruntime': $VIMRUNTIME,
"         \   'runtimepath': &rtp,
"         \ }})
"   augroup END
" endif


" CSS
" if executable('css-languageserver')
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'css-languageserver',
"         \ 'cmd': {server_info->[&shell, &shellcmdflag, 'css-languageserver --stdio']},
"         \ 'whitelist': ['css', 'less', 'sass'],
"         \ })
" endif

" Buffer
" call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
"     \ 'name': 'buffer',
"     \ 'whitelist': ['*'],
"     \ 'blacklist': ['go'],
"     \ 'completor': function('asyncomplete#sources#buffer#completor'),
"     \ 'config': {
"     \    'max_buffer_size': 5000000,
"     \  },
"     \ }))
