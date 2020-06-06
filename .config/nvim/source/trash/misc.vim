    "set bg=light
    "syntax on
	"set whichwrap=b,s,<,>,[,]
	"set spell
	"au BufAdd,BufNewFile * nested tab sball
	"set path=.,,**
	"nnoremap c "_c
    "set go=a
	"set nohlsearch
	"set hidden
    " set paste

	"nnoremap      j      h
	"nnoremap      k      k
	"nnoremap      l      j
	"nnoremap      ;      l
	"nnoremap		S	:update<cr>

    "noremap     j      gk
	"noremap     k	    h
	"noremap     ;	    gj

	" Save file as sudo on files that require root permission
	"nnoremap <leader>S execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
	" Spell-check set to <leader>o, 'o' for 'orthography':
	"nnoremap <C-o> :setlocal spell! spelllang=en_us<cr>
    "Plugins
    "packloadall
    "silent! helptags ALL
    " Loads Views
    "au BufWinLeave *.* mkview
    "au BufWinEnter *.* silent loadview
    "hi CursorLine term=bold cterm=bold guibg=Grey20
    "hi CursorLine   cterm=bold ctermbg=blue ctermfg=white guibg=darkred guifg=white

    "vmap        <leader>y	"+y
    "nnoremap    <leader>p   "+p

	" Automatically deletes all trailing whitespace on save.
	"au BufWritePre * %s/\s\+$//e

    " ------------[ Sessions ]-----------------

    "nnoremap	<leader>ss  :mks! ~/.config/nvim/sessions/0.vim<cr>
	"nnoremap	<leader>sl	:source ~/.config/nvim/sessions/0.vim<cr>
    "nnoremap	<leader>s1	:mks! ~/.config/nvim/sessions/1.vim<cr>
	" nnoremap	<leader>1	:source ~/.config/nvim/sessions/1.vim<cr>

    " ------------[ Misc ]-----------------

    "nnoremap	<leader>b	:buffers<cr>:buffer<Space>
    "nnoremap	<leader>c   :bd<cr>
    "nnoremap	<leader>j	:bp<cr>
    "nnoremap	<leader>;	:bp<cr>

    "nnoremap	<leader>t	:NERDTreeToggle<cr>


"if ilereadable(expand("~/.vimrc_background"))
  "let base16colorspace=256
  "source ~/.vimrc_background
"endif

" if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
    "echo "Downloading junegunn/vim-plug to manage plugins..."
    "silent !mkdir -p ~/.config/nvim/autoload/
    "silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
   "au VimEnter * PlugInstall
"endif

    " nnoremap    p           ]p
    " nnoremap    p           ]p

" AutoStarts / AutoStops

    " au  BufWinLeave *   mkview!
    " au  BufWinEnter *   silent loadview

    " au  BufWinLeave *.*   mkview!
    " au  BufWinEnter *.*   silent loadview

    " au BufWritePost,BufLeave,WinLeave ?* mkview!
    " au BufReadPre ?* silent loadview


" " Save file as sudo on files that require root permission
" 	cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

