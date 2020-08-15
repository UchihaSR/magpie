          " _                       _
 " __   __ (_)  _ __ ___    _ __   | |  _   _    __ _
 " \ \ / / | | | '_ ` _ \  | '_ \  | | | | | |  / _` |
  " \ V /  | | | | | | | | | |_) | | | | |_| | | (_| |
   " \_/   |_| |_| |_| |_| | .__/  |_|  \__,_|  \__, |
          "                |_|                  |___/

call plug#begin('~/.config/nvim/plugged')

"=======================================
"              Sources
"=======================================

so ~/.config/nvim/vimplug/ale.vim
so ~/.config/nvim/vimplug/coc.vim

"===============================================================================
"                             Essentials
"===============================================================================

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
" Plug 'mhinz/vim-startify'
" Plug 'farmergreg/vim-lastplace'
Plug 'powerman/vim-plugin-AnsiEsc'
" Plug 'sheerun/vim-polyglot'
Plug 'kovetskiy/sxhkd-vim'

Plug 'psliwka/vim-smoothie'
    nmap K <Plug>(SmoothieUpwards)
    nmap L <Plug>(SmoothieDownwards)

Plug 'tpope/vim-surround'
    nmap sw ysiw
    nmap sW ysiW
    nmap sl yss

Plug 'tpope/vim-commentary'
    :map s  <Plug>Commentary
    nmap ss <Plug>CommentaryLine
    " :map s  gc
    " nmap ss gcc

Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
    let g:Hexokinase_highlighters = [ 'backgroundfull' ]
    let g:Hexokinase_ftEnabled = ['css', 'scss', 'sass', 'html', 'javascript', 'sh', 'yaml', 'conf' ]

Plug 'godlygeek/tabular'
    au automation BufReadPost * :noremap <leader>t :Tabularize /

Plug 'mattn/emmet-vim'
    let g:user_emmet_leader_key=','
    " let g:user_emmet_leader_key='<a-,>'
    let g:user_emmet_install_global = 0
    au automation FileType html,css,sass,javascript,markdown,vimwiki EmmetInstall

Plug 'easymotion/vim-easymotion'
    let g:EasyMotion_do_mapping = 0
    let g:EasyMotion_smartcase = 1
    nmap f <Plug>(easymotion-overwin-w)
    " map  f <Plug>(easymotion-bd-w)

Plug 'Yggdroot/indentLine'
    let g:indentLine_enabled = 0
    au automation BufReadPost * nnoremap <leader>i :IndentLinesToggle<cr>

"===============================================================================
"                             Color Schemes
"===============================================================================

Plug 'sainnhe/gruvbox-material'

" Plug 'bluz71/vim-nightfly-guicolors'
" Plug 'morhetz/gruvbox'
" Plug 'lifepillar/vim-gruvbox8'
" Plug 'iCyMind/NeoSolarized'
" Plug 'rakr/vim-one'
" Plug 'whatyouhide/vim-gotham'
 " Plug 'altercation/vim-colors-solarized'

"===============================================================================
"                             Goyo
"===============================================================================

Plug 'junegunn/goyo.vim'
    au automation BufReadPost * Goyo 82x80%
    au automation VimResized * execute "normal \<C-W>="
    " let g:goyo_linenr = 1

" au automation FocusGained,BufEnter * Goyo 82x100%
" au automation User GoyoLeave silent! source $MYVIMRC
" au! automation User GoyoLeave silent! source $MYVIMRC

"===============================================================================
"                             Markdown
"===============================================================================

" Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
"     let g:mkdp_refresh_slow = 1
"     au automation FileType markdown,vimwiki nnoremap <leader><cr> <Plug>MarkdownPreviewToggle
"     let g:mkdp_browser = 'falkon'
"     au automation FileType markdown nnoremap <leader><cr> :MarkdownPreview<cr>

" Plug 'dhruvasagar/vim-table-mode'
" au automation FileType markdown TableModeToggle

" Plug 'plasticboy/vim-markdown'
" Plug 'tpope/vim-markdown'
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-pandoc/vim-rmarkdown'

" Plug 'vimwiki/vimwiki'
" let g:vimwiki_list = [{'path': '/disk/Phone/Notes', 'syntax': 'markdown', 'ext': '.md'}]
" au automation   FileType vimwiki nmap gj <Plug>VimwikiGoBackLink
" au automation   FileType vimwiki nmap g; <Plug>VimwikiFollowLink

" let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

"===============================================================================
"                             CSS
"===============================================================================

" Plug 'vim-scripts/sass'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'cakebaker/scss-syntax.vim'
" Plug 'tpope/vim-haml'

"===============================================================================
"                             Javascript
"===============================================================================

Plug 'pangloss/vim-javascript'
" Plug 'peecky/vim-node-syntax'
" Plug 'mxw/vim-xhp'

"---------------------------------------
"              Typescript 
"---------------------------------------
" Plug 'tasn/vim-tsx'
" Plug 'leafgarland/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'

"---------------------------------------
"              JSON 
"---------------------------------------
" Plug 'GutenYe/json5.vim'
" Plug 'elzr/vim-json'

"---------------------------------------
"              JSX 
"---------------------------------------
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'mxw/vim-jsx'
" Plug 'chemzqm/vim-jsx-improve'

" Plug 'moll/vim-node'
" Plug 'othree/yajs'

"===============================================================================
"                             Python
"===============================================================================


" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Plug 'Vimjas/vim-python-pep8-indent'
" Plug 'jeetsukumaran/vim-pythonsense'
" Plug 'vim-python/python-syntax'
" Plug 'aliev/vim-compiler-python'

"===============================================================================
"                             Exp
"===============================================================================

" Plug 'tomasr/molokai'
" Plug 'nanotech/jellybeans.vim'
" Plug 'patstockwell/vim-monokai-tasty'
" Plug 'dikiaap/minimalist'
" Plug 'joshdick/onedark.vim'
" Plug 'mhartington/oceanic-next'

" so ~/.config/nvim/source/plugins/airline.vim


" Plug 'kana/vim-textobj-user'

" Plug 'bilalq/lite-dfm'
" let g:lite_dfm_normal_bg_cterm = 215
" let g:lite_dfm_left_offset = 90
" " let g:lite_dfm_keep_ruler=1


" Plug 'junegunn/limelight.vim'

" Plug 'justinmk/vim-sneak'
" map f <Plug>Sneak_s
" map F <Plug>Sneak_S

" Plug 'liuchengxu/vim-which-key'
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

" Plug 'Raimondi/delimitMate'

" Plug 'nathanaelkane/vim-indent-guides'
" hi IndentGuidesOdd  ctermbg=black
" hi IndentGuidesEven ctermbg=darkgrey

" Plug 'cometsong/CommentFrame.vim'
" Plug 'tmhedberg/matchit'


" Plug 'metakirby5/codi.vim'
" Plug 'chrisbra/Colorizer'
" Plug 'powerman/vim-plugin-AnsiEsc'
" Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'

" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/asyncomplete-ultisnips.vim'

" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }

"Plug 'preservim/nerdcommenter'
" Plug 'ap/vim-css-color'
" Plug 'godlygeek/tabular'
" Plug 'ajh17/VimCompletesMe'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'junegunn/fzf', { 'do': './install --bin' }
" Plug 'junegunn/fzf.vim'

"Plug 'scrooloose/nerdtree'
"Plug 'ryanoasis/vim-devicons'

"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'crusoexia/vim-monokai'
"Plug 'mhartington/oceanic-next'
"Plug 'rakr/vim-one'
"Plug 'drewtempelmeyer/palenight.vim'
"Plug 'romainl/flattened'
"Plug 'lifepillar/vim-solarized8'
"Plug 'joshdick/onedark.vim'
"Plug 'phanviet/vim-monokai-pro'
"Plug 'norcalli/nvim-colorizer.lua'

" Plug 'SirVer/ultisnips'
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger='<tab>'
" let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
" let g:UltiSnipsSnippetDirectories=['UltiSnips', 'ultiSnips']

" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'vim-scripts/restore_view.vim'

" Plug 'tpope/vim-obsession'

" Plug 'jaxbot/browserlink.vim'
    " au automation InsertLeave *.css :BLReloadCSS

" Plug 'turbio/bracey.vim'

call plug#end()

colorscheme gruvbox-material
