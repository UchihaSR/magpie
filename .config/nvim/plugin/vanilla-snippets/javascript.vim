au automation FileType javascript inoremap ;; <Esc>/<++><CR>"_c4l

au automation FileType javascript inoremap == ===

" au automation   FileType javascript     inoremap    ;r          <esc>:0r ~/.config/nvim/templates/react.js<cr>i

au automation FileType javascript inoremap ;cl console.log()<Left>
au automation FileType javascript inoremap $ ${}<Left>
" au automation   FileType javascript     inoremap    ;r          const  = require('<++>')<esc>06li
au automation FileType javascript inoremap ;i import  from '<++>'<esc>11hi
au automation FileType javascript inoremap ;a () => <++><Esc>F(a
