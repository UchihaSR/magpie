set encoding=utf-8
scriptencoding utf-8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Cursor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set cursorline
" set cursorcolumn
" autocmd ac InsertEnter * set nocursorline nocursorcolumn
" autocmd ac InsertLeave * set cursorline cursorcolumn

hi clear CursorLine
hi CursorLine gui=underline
" hi CursorLine gui=underline cterm=underline
autocmd ac InsertEnter * set nocursorline
autocmd ac InsertLeave * set cursorline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Backgrounds and Foregrouds
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Transparency
highlight Normal       guibg=NONE
highlight SignColumn   guibg=NONE
highlight Pmenu        guibg=NONE
highlight CursorLineNR guibg=NONE
highlight EndOfBuffer  guibg=NONE

highlight Visual       guibg=NONE guifg=#00FF00

" hi LineNr 	    guibg=NONE
" highlight NonText      guibg=NONE

" highlight clear SpellBadi
" highlight SpellBadi     guibg=red

highlight clear SpellBad
highlight SpellBad guibg=NONE guifg=Red

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Exp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" syntax enable
" syntax on
" set t_8f=[38;2;%lu;%lu;%lum
" set t_8b=[48;2;%lu;%lu;%lum
" set termguicolors
" set t_Co=256
" set bg=light
" set bg=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Color Schemes
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Available values: 'hard', 'medium'(default), 'soft'
" let g:gruvbox_material_background = 'soft'
" colorscheme gruvbox-material

" " colorscheme nightfly

" colorscheme solarized

" colorscheme one
" let g:one_allow_italics = 1

" colorscheme seoul256

" colorscheme monokai
" let g:monokai_term_italic = 1
" let g:airline_theme='dark'

" colorscheme molokai
" let g:rehash256 = 1

" colorscheme vim-monokai-tasty
" let g:vim_monokai_tasty_italic = 1

" colorscheme sublimemonokai
" let g:sublimemonokai_term_italic = 1

" colorscheme gruvbox
" colorscheme gruvbox8

" colorscheme OceanicNext
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1

" colorscheme minimalist
" " let g:airline_theme='minimalist'

" colorscheme onedark

" colorscheme NeoSolarized

" colorscheme jellybeans

"colorscheme hyper
"colorscheme palenight
"colorscheme solarized8
"colorscheme flattened_dark
" colorscheme monokai_pro
