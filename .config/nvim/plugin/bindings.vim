let mapleader = ' '
:noremap <leader><leader> :

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Saves & Quits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <cr>             :update<cr>
nnoremap <leader><cr>     :update \| !compile %<cr>
nnoremap <m-cr>           :silent w !doas tee %<cr>

nnoremap <esc>            :qa<cr>
nnoremap <leader><esc>    :qa!<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Navigation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" My right shifted semi reversed setup
:noremap j           h
:noremap ;           l

:noremap k           gk
:noremap l           gj

:noremap J           b
:noremap :           e

:noremap <leader>k   gg
:noremap <leader>l   G$zz
:noremap <leader>j   ^
:noremap <leader>;   $

vnoremap K           <C-u>zz
vnoremap L           <C-d>zz

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Modifications for consistancy
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap Y         y$

nnoremap V         v$h
nnoremap vv        V
nnoremap <leader>v <c-v>

nnoremap cj        c^
nnoremap dj        d^
nnoremap yj        y^

nnoremap c;        lC
nnoremap d;        lD
nnoremap y;        ly$

nnoremap <M-j>  4dh
nnoremap <M-;>  i<tab><esc>l

nnoremap <M-k>  kJ
nnoremap <M-l>  J


nnoremap <leader>y :%y<cr>
nnoremap <leader>d :%d<cr>

nnoremap U <C-r>

xnoremap p pgvy

" ------------[ View ]-----------------

nnoremap <leader>w	:set wrap!<cr>

:noremap <leader>u	za
:noremap <leader>U	zM

" ------------[ Misc ]-----------------

nnoremap h           o<esc>
nnoremap H           O<esc>

nnoremap '           "
nnoremap "           '

nnoremap <leader>r   :source $MYVIMRC<cr>
:noremap <c-w>       g<c-g>


nnoremap <leader>s   :%s//gcI<left><left><left><left>
vnoremap <leader>s   "zy:%s/<C-r>z//gc<left><left><left>


nnoremap <leader>b       :w! %.bak<cr>

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

nnoremap <leader>P       maggVG='a

nnoremap ! :silent !swallow "$TERMINAL --working-directory" "$(pwd)"<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Spelling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>o   :set spell!<cr>

" Autofix Word
nnoremap <leader>f   1z=

" Add / Remove Word
nnoremap <leader>a   zg
nnoremap <leader>A   zug

au automation FileType markdown,text nnoremap gk [s
au automation FileType markdown,text nnoremap gl ]s

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nnoremap    <leader>g   :Goyo!<cr>

" nnoremap gk [s
" nnoremap gl ]s

" nnoremap        <leader>t       :TableModeToggle<cr>

" vnoremap    <leader>r   "zy:args *.<ext> | argdo :%s/<C-r>z/<rep>/gc | update

" imap		{			{  }<esc>i<bs>

" vmap        <leader>f   za

" ------------[ Buffers ]-----------------
" nnoremap gl :next<cr>
" nnoremap gk :prev<cr>

" :noremap    <leader>f	zf
" :noremap    <leader>F	zd

" nnoremap    <M-k>	            kdd
" nnoremap    <M-l>	            I<cr><esc>l


" nnoremap    <C-j>	            H
" nnoremap    <C-;>	            L

" nnoremap    <C-k>	            K
" nnoremap    <C-l>	            J

" nnoremap    f           /
" vnoremap    f           y/\V<C-R>=escape(@",'/\')<CR><CR>
" nnoremap    F           ?

" nmap    g           '

" nnoremap <leader>g :browse oldfiles<cr>

" :noremap    K           <C-u>zz
" :noremap    L           <C-d>zz

" nnoremap    <leader><esc>            ZQ

" nnoremap                                    <leader><cr>       :!compile %<cr>
" nnoremap                                    <leader><cr>       :update<cr> <bar> :!compile %<cr>

" nnoremap                                    <cr>	            :update<cr> <bar> maggVG='a

" nnoremap	<M-cr>          :%d \| :-1read %.bak<cr>

" nnoremap <leader><cr>     :update <bar> !compile %<cr>
