set encoding=utf-8
scriptencoding utf-8

" syntax enable
" syntax on
" set t_8f=[38;2;%lu;%lu;%lum
" set t_8b=[48;2;%lu;%lu;%lum
set termguicolors
" set t_Co=256
" set bg=light
" set bg=dark

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                       Color Schemes 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

colorscheme one
let g:one_allow_italics = 1

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
" colorscheme gruvbox-material

" colorscheme OceanicNext
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1

" colorscheme minimalist
" let g:airline_theme='minimalist'

" colorscheme onedark

" colorscheme NeoSolarized

" colorscheme jellybeans

"colorscheme hyper
"colorscheme palenight
"colorscheme solarized8
"colorscheme flattened_dark
" colorscheme monokai_pro

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                       Cursor 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

hi clear CursorLine
hi CursorLine gui=underline
" hi CursorLine gui=underline cterm=underline

autocmd automation InsertEnter * set nocul
autocmd automation InsertLeave * set cul

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Backgrounds and Foregrouds 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Transparency
highlight Normal 	      guibg=NONE
highlight SignColumn    guibg=NONE
highlight Pmenu         guibg=NONE
highlight CursorLineNR  guibg=NONE

highlight Visual       guibg=NONE guifg=#00FF00

" hi LineNr 	    guibg=NONE
" hi EndOfBuffer  guibg=NONE
" highlight NonText      guibg=NONE

" highlight clear SpellBadi
" highlight SpellBadi     guibg=red

highlight SpellBad guibg=NONE guifg=Red
