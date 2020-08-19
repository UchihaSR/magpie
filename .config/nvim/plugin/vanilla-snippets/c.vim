" au ac FileType c inoremap ;b <Esc>40i//<Esc>o<Esc>40i//<Esc>O//<Esc>30a<space><Esc>i
" au ac FileType c inoremap ;B <Esc>20i//<Esc>o<Esc>20i//<Esc>O//<Esc>15a<space><Esc>i
" au ac FileType c inoremap ;s <Esc>40i//<Esc>o
" au ac FileType c inoremap ;S <Esc>20i//<Esc>o
au ac FileType c inoremap ;p printf("");<esc>3<left>a
au ac FileType c inoremap ;s system("");<esc>3<left>a
au ac FileType c inoremap ;i #include 
au ac FileType c inoremap ;m 
            \ int main(void){<cr><cr><cr>}<up><tab>return 0;<up><tab>

au ac FileType c inoremap ;t  <Esc>:read ~/.config/nvim/templates/c_boiler.c<cr>

au ac FileType c,cpp,dart,javascript inoremap ;b //<esc>78a=<esc>yypO//<esc>30a<space><Esc>i
au ac FileType c,cpp,dart,javascript inoremap ;B //<esc>38a-<esc>yypO//<esc>15a<space><Esc>i

au ac FileType c,cpp,dart inoremap (<space> ();<left><left>
au ac FileType c,cpp,dart inoremap (<cr> (){<cr>}<esc>kf(a

au ac FileType c,cpp,dart inoremap { {<CR>}<Esc>O
