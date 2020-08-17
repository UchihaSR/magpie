au ac FileType javascript inoremap ;; <Esc>/<++><CR>"_c4l

au ac FileType javascript inoremap == ===

" au ac   FileType javascript     inoremap    ;r          <esc>:0r ~/.config/nvim/templates/react.js<cr>i

au ac FileType javascript inoremap ;cl console.log()<Left>
au ac FileType javascript inoremap $ ${}<Left>
" au ac   FileType javascript     inoremap    ;r          const  = require('<++>')<esc>06li
au ac FileType javascript inoremap ;i import  from '<++>'<esc>11hi
au ac FileType javascript inoremap ;a () => <++><Esc>F(a
