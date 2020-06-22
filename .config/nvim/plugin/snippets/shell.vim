au automation FileType sh,conf,yaml,sxhkd,zsh,python inoremap ;b <Esc>80i#<Esc>o<Esc>80i#<Esc>O#<Esc>30a<space><Esc>i

au automation FileType sh,conf,yaml,sxhkd,zsh,python inoremap ;t <Esc>40i#<Esc>o<Esc>40i#<Esc>O#<Esc>15a<space><Esc>i

au automation FileType sh inoremap ;o  <Esc>:read ~/.config/nvim/templates/options.sh<cr>
