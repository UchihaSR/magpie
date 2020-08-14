" au automation FileType c inoremap ;b <Esc>40i//<Esc>o<Esc>40i//<Esc>O//<Esc>30a<space><Esc>i
" au automation FileType c inoremap ;B <Esc>20i//<Esc>o<Esc>20i//<Esc>O//<Esc>15a<space><Esc>i
" au automation FileType c inoremap ;s <Esc>40i//<Esc>o
" au automation FileType c inoremap ;S <Esc>20i//<Esc>o
au automation FileType c inoremap ;p printf("");<left><left><left>
au automation FileType c inoremap ;s system("");<left><left><left>
au automation FileType c inoremap ;i #include <.h><left><left><left>
au automation FileType c inoremap ;m 
            \ int main(void){<cr><cr><cr>}<up><tab>return 0;<up><tab>

au automation FileType c inoremap ;t  <Esc>:read ~/.config/nvim/templates/c_boiler.c<cr>

au automation FileType c,javascript.jsx inoremap ;b //<esc>78a=<esc>yypO//<esc>30a<space><Esc>i
au automation FileType c,javascript.jsx inoremap ;B //<esc>38a-<esc>yypO//<esc>15a<space><Esc>i
