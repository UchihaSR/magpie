          " _
 " __   __ (_)  _ __ ___    _ __    ___
 " \ \ / / | | | '_ ` _ \  | '__|  / __|
  " \ V /  | | | | | | | | | |    | (__
   " \_/   |_| |_| |_| |_| |_|     \___|


" Autocommand group for effecinecy
augroup ac
   autocmd!
augroup END

" Vimplug Autoinstaller
if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
    echo 'Downloading junegunn/vim-plug to manage plugins...'
    silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
    silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
    au ac VimEnter * PlugInstall
endif

" Source Vimplug stuff
so ~/.config/nvim/vimplug/initvp.vim

"===============================================================================
" "plugin"" directory contains the rest of the configs
"===============================================================================
