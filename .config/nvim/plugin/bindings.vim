let mapleader = ' '
:noremap <leader><leader> :

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Saves & Quits
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" nnoremap <cr> :wa<cr>:!compile %<cr>
" nnoremap g<cr> :execute 'silent! write !sudo tee % >/dev/null' <bar> edit!<cr>

nnoremap n             :qa<cr>
nnoremap N             :qa!<cr>
nnoremap <esc>         :qa<cr>
nnoremap <leader><esc> :qa!<cr>

au ac FileType tex nnoremap <leader><cr> :w \| silent !compile %<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Navigation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" My right shifted semi reversed setup =)
:noremap j           h
:noremap ;           l

" :noremap k           gk
" :noremap l           gj
:noremap l           j

:noremap J           b
:noremap :           e

" :noremap <leader>k   gg
" :noremap <leader>l   G$zz
" :noremap <leader>j   ^
" :noremap <leader>;   $

vnoremap K           <C-u>zz
vnoremap L           <C-d>zz

nnoremap e   /
vnoremap e   "zy:/<C-r>z<cr>
nnoremap E   ?

nnoremap m nzzzv
nnoremap M Nzzzv

nnoremap " m
nnoremap ' `

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Modifications
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

nnoremap <leader>j  4dh
nnoremap <S-Tab>    4dh
nnoremap <leader>;  i<tab><esc>l
nnoremap <Tab>      i<tab><esc>l
nnoremap <leader>k  kJ
nnoremap <leader>l  J

nnoremap <leader>y :%y<cr>
nnoremap <leader>d :%d<cr>

nnoremap U <C-r>

xnoremap p pgvy

vmap < <gv
vmap > >gv

" ------------[ View ]-----------------

nnoremap <leader>w	:set wrap!<cr>

" :noremap <leader>u	za
" :noremap <leader>U	zM

" ------------[ Misc ]-----------------

nnoremap h           o<esc>
nnoremap H           O<esc>

" nnoremap '           "

" nnoremap <leader>r   :source $MYVIMRC<cr>
:noremap <c-w>       g<c-g>

" nnoremap <leader>s   :argdo %s//gcI | update
nnoremap <leader>s   :%s//gcI<left><left><left><left>
vnoremap <leader>s   "zy:%s/<C-r>z//gc<left><left><left>

nnoremap <leader>b       :w! %.bak<cr>

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!<cr>

nnoremap <leader>P       maggVG='a

nnoremap ! :silent !devour $TERMINAL --working-directory $PWD<cr>

nnoremap <leader>u g~iw
vnoremap <leader>u ~

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Spelling
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nnoremap <leader>o   :set spell!<cr>

" Autofix Word
nnoremap <leader>f   1z=
nnoremap <leader>F   i<C-X><C-S>

" Add / Remove Word
nnoremap <leader>a   zg
nnoremap <leader>A   zug

au ac FileType markdown,text nnoremap gk [s
au ac FileType markdown,text nnoremap gl ]s


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Misc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function Figlet(string)
    silent exec '!figlet -W' a:string '| xsel -b'
endfunction
nnoremap <leader>1 :call Figlet("")<left><left>

" nnoremap    <leader>g   :Goyo!<cr>

" nnoremap gk [s
" nnoremap gl ]s

" nnoremap        <leader>t       :TableModeToggle<cr>

" vnoremap    <leader>r   "zy:args *.<ext> | argdo :%s/<C-r>z/<rep>/gc | update

" imap		{			{  }<esc>i<bs>

" vmap        <leader>f   za

" ------------[ Buffers ]-----------------
nnoremap g; :next<cr>
nnoremap gj :prev<cr>

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

" nnoremap <C-cr>        :silent w !doas tee %<cr>
" nnoremap <C-cr>        :%!doas tee > /dev/nul %<cr>
" nnoremap g<cr> :%!doas tee > /dev/nul %<cr>
" cnoremap w!! %!sudo tee > /dev/null %<CR>
" nnoremap g<cr> :silent! write !sudo tee % >/dev/null \| edit!<cr>

" nnoremap <silent><cr> :silent update<cr>
