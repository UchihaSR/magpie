au automation FileType javascript.jsx inoremap ;; <Esc>/<++><CR>"_c4l

au automation FileType javascript.jsx inoremap == ===

" au automation   FileType javascript     inoremap    ;r          <esc>:0r ~/.config/nvim/templates/react.js<cr>i

au automation FileType javascript.jsx inoremap ;cl console.log()<Left>
au automation FileType javascript.jsx inoremap $ ${}<Left>
" au automation   FileType javascript     inoremap    ;r          const  = require('<++>')<esc>06li
au automation FileType javascript.jsx inoremap ;i import  from '<++>'<esc>11hi
au automation FileType javascript.jsx inoremap ;a () => <++><Esc>F(a
