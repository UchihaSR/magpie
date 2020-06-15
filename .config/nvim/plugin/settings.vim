set encoding=utf-8
scriptencoding utf-8

" Automatic, language-dependent indentation, syntax coloring and other
" functionality.
filetype indent plugin on
syntax on

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

" Give more space for displaying messages.
set cmdheight=2

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
set expandtab

set linebreak
set breakindent
set autoindent
set smartindent

set nohlsearch
set clipboard+=unnamedplus
set splitbelow splitright
set wildmode=longest,list,full
" set hidden
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
set list
" CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars=nbsp:⦸ 
" WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7)
set listchars+=tab:▷┅
" RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=extends:»
" LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=precedes:«
" BULLET (U+2022, UTF-8: E2 80 A2)
set listchars+=trail:•
" don't autoinsert two spaces after '.', '?', '!' for join command
set nojoinspaces

" set conceallevel=0
" set completeopt-=preview

set noruler
set laststatus=0

" set shortmess=F

set spellfile=~/.config/nvim/spell/en.utf-8.add

set formatoptions+=n " smart auto-indenting inside numbered lists


set scrolloff=3                       " start scrolling 3 lines before edge of viewport
set shiftround                        " always indent by multiple of shiftwidth
set shiftwidth=3                      " spaces per tab (when shifting)
set shortmess+=A                      " ignore annoying swapfile messages
set shortmess+=I                      " no splash screen
set shortmess+=O                      " file-read message overwrites previous
set shortmess+=T                      " truncate non-file messages in middle
set shortmess+=W                      " don't echo "[w]"/"[written]" when writing
set shortmess+=a                      " use abbreviations in messages eg. `[RO]` instead of `[readonly]`
set shortmess+=o                      " overwrite file-written messages
set shortmess+=t                      " truncate file messages at start

if has('linebreak')
  let &showbreak='↳ '                 " DOWNWARDS ARROW WITH TIP RIGHTWARDS (U+21B3, UTF-8: E2 86 B3)
endif

if has('showcmd')
  set noshowcmd                       " don't show extra info at end of command line
endif

set sidescrolloff=3                   " same as scrolloff, but for columns
set smarttab                          " <tab>/<BS> indent/dedent in leading whitespace

if has('syntax')
  set spellcapcheck=                  " don't check for capital letters at start of sentence
endif

if v:progname !=# 'vi'
  set softtabstop=-1                  " use 'shiftwidth' for tab/bs at end of line
endif

if exists('&swapsync')
  set swapsync=                       " let OS sync swapfiles lazily
endif
set switchbuf=usetab                  " try to reuse windows/tabs when switching buffers

if has('syntax')
  set synmaxcol=200                   " don't bother syntax highlighting long lines
endif

if has('termguicolors')
  set termguicolors                   " use guifg/guibg instead of ctermfg/ctermbg in terminal
endif

set textwidth=80                      " automatically hard wrap at 80 columns

set whichwrap=b,h,l,s,<,>,[,],~       " allow <BS>/h/l/<Left>/<Right>/<Space>, ~ to cross line boundaries

