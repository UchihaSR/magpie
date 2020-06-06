set encoding=utf-8
scriptencoding utf-8

set autoindent
" filetype plugin indent on

set cursorline
" hi clear CursorLine
" hi CursorLine gui=underline cterm=underline
" set cursorcolumn
" hi CursorLine   guibg=grey30

set number relativenumber
set mouse=a
" set wrap linebreak nolist
set linebreak
set backspace=indent,eol,start
" set nocompatible
set ttyfast
set history=500
set autoread
set scrolloff=7

" Give more space for displaying messages.
set cmdheight=2

set whichwrap+=<,>
set ignorecase
set smartcase
set incsearch
set lazyredraw
set magic
set showmatch
set matchtime=2
set fileformats=unix,dos,mac

set nobackup
set nowritebackup
set noswapfile

set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab
" set smarttab

set linebreak
set textwidth=500
set breakindent
set autoindent
set smartindent

set nohlsearch
set clipboard+=unnamedplus
set splitbelow splitright
set wildmode=longest,list,full
set hidden
" set paste
set modelines=0
" set viewoptions-=options

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Arabic Settings
" set delcombine
" set rl
" set arabicshape
" set rightleftcmd&
" set guifont=Markazi\ Text\ 15

"Folds
" set foldmethod=marker
" set foldmarker=<<<,>>>
" set foldmethod=indent
" set foldlevel=99
set nofoldenable

"Visible space
" set list
" set listchars=tab:>-
" set listchars=eol:¬,tab:▸\
"
" set conceallevel=0
" set completeopt-=preview

set noshowmode
set noruler
set laststatus=0

" set shortmess=F

set spellfile=~/.config/nvim/spell/en.utf-8.add
