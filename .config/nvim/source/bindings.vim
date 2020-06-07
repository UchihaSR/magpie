" ------------[ Unmap ]-----------------

noremap <Up> <Nop>

noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let mapleader = ' '

nnoremap                                    <cr>	            :update<cr>
" nnoremap                                    <cr>	            :update<cr> <bar> maggVG='a
nnoremap                                    <leader>p          :ALEFix<cr>

" nnoremap                                    <leader><cr>       :!compile %<cr>
" nnoremap                                    <leader><cr>       :update<cr> <bar> :!compile %<cr>
nnoremap                                    <leader><cr>       :update <bar> !compile %<cr>
nnoremap                                    <m-cr>       :silent w !doas tee %<cr>

" nnoremap	<M-cr>          :%d \| :-1read %.bak<cr>

:noremap    <leader><leader>	    :

nnoremap    <esc> 	                :qa<cr>
nnoremap    <leader><esc>            ZQ

" ------------[ Navigation ]-----------------

:noremap    j           h
:noremap    ;           l

:noremap    k           gk
:noremap    l           gj

:noremap	   J    	      b
:noremap	   :    	      e

" :noremap    K           <C-u>zz
" :noremap    L           <C-d>zz

:noremap    <leader>k	gg
:noremap    <leader>l	G$zz
:noremap    <leader>j	^
:noremap    <leader>;	$

" nnoremap    f           /
" vnoremap    f           y/\V<C-R>=escape(@",'/\')<CR><CR>
" nnoremap    F           ?

" nmap    g           '

" nnoremap <leader>g :browse oldfiles<cr>

vnoremap    K           <C-u>zz
vnoremap    L           <C-d>zz

" ------------[ Buffers ]-----------------

" nnoremap gl :next<cr>
" nnoremap gk :prev<cr>

" -------------[ Changing, Deleting & Yanking ]-------------

nnoremap    Y                   y$

nnoremap    V                   v$h
nnoremap    vv                  V
nnoremap    <leader>v           <c-v>

nnoremap	cj                  c^
nnoremap	dj                  d^
nnoremap	yj                  y^

nnoremap	c;                  lC
nnoremap	d;                  lD
nnoremap	y;                  ly$

nnoremap    <M-j>	            4dh
nnoremap    <M-;>	            i<tab><esc>l

nnoremap    <M-k>	            kJ
nnoremap    <M-l>	            J

" nnoremap    <M-k>	            kdd
" nnoremap    <M-l>	            I<cr><esc>l


" nnoremap    <C-j>	            H
" nnoremap    <C-;>	            L

" nnoremap    <C-k>	            K
" nnoremap    <C-l>	            J

nnoremap    <leader>y          :%y<cr>
nnoremap    <leader>d          :%d<cr>

nnoremap    U	                <C-r>

" ------------[ View ]-----------------

nnoremap	<leader>w	:set wrap!<cr>

" :noremap    <leader>f	zf
" :noremap    <leader>F	zd

:noremap    <leader>u	za
:noremap    <leader>U	zM

" vmap        <leader>f   za

" ------------[ Misc ]-----------------

nnoremap    h           o<esc>
nnoremap    H           O<esc>

nnoremap    '           "
nnoremap    "           '

nnoremap    <leader>r   :source $MYVIMRC<cr>
nnoremap    <leader>R   :set rightleft!<cr>
:noremap    <c-w>       g<c-g>

" imap		{			{  }<esc>i<bs>

nnoremap    <leader>s   :%s//gcI<left><left><left><left>
vnoremap    <leader>s   "zy:%s/<C-r>z//gc<left><left><left>

" vnoremap    <leader>r   "zy:args *.<ext> | argdo :%s/<C-r>z/<rep>/gc | update

nnoremap        <leader>b       :w! %.bak<cr>

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

nnoremap        <leader>t       maggVG='a

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Spelling 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap    <leader>S   :set spell!<cr> 
nnoremap    <leader>f   1z=

" Add / Remove Words
nnoremap    <leader>a   zg
nnoremap    <leader>A   zug

" nnoremap gk [s
" nnoremap gl ]s

au automation FileType markdown,text nnoremap gk [s
au automation FileType markdown,text nnoremap gl ]s

nnoremap    <leader>g   :Goyo!<cr>
