Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='luna'
let g:airline_powerline_fonts = 1

" let g:airline#extensions#tabline#enabled = 1
" let g:airline_statusline_ontop=1

"" " Enable extensions
" let g:airline_extensions = ['branch', 'coc', 'ale']
"" let g:airline_extensions = ['branch', 'hunks', 'coc']

"" " Update section z to just have line number
"" let g:airline_section_z = airline#section#create(['linenr'])

"" " Do not draw separators for empty sections (only for the active window) >
"" let g:airline_skip_empty_sections = 1

"" " Smartly uniquify buffers names with similar filename, suppressing common parts of paths.
"" let g:airline#extensions#tabline#formatter = 'unique_tail'

"" " Custom setup that removes filetype/whitespace from default vim airline bar
"" let g:airline#extensions#default#layout = [['a', 'b', 'c'], ['x', 'z', 'warning', 'error']]

"" " Customize vim airline per filetype
"" " 'nerdtree'  - Hide nerdtree status line
"" " 'list'      - Only show file type plus current line number out of total
"" let g:airline_filetype_overrides = {
""   \ 'nerdtree': [ get(g:, 'NERDTreeStatusline', ''), '' ],
""   \ 'list': [ '%y', '%l/%L'],
""   \ }

"" " Enable caching of syntax highlighting groups
"" let g:airline_highlighting_cache = 1

"" " Define custom airline symbols
"" if !exists('g:airline_symbols')
""   let g:airline_symbols = {}
"" endif

"" " Don't show git changes to current file in airline
"" let g:airline#extensions#hunks#enabled=0

" let g:airline_theme='light'
" let g:airline_theme='sol'
" let g:airline_theme='dark'
