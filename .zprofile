#!/usr/bin/env sh

###############################################################################
#                             Defaults
###############################################################################

export COMPOSITOR="xcompmgr"
export BROWSER=firefox
export DMENU="rofi -dmenu -i"
export EDITOR=nvim
export FILE=lf
export MANPAGER="nvim +Man!"
export PAGER="nvim -R +AnsiEsc"
export READER=zathura
export TERMINAL=alacritty
export VISUAL=nvim
export STATUSBAR=yabar
export WM=bspwm

###############################################################################
#                             System
###############################################################################

export GIT=/mnt/horcrux/git
export PANEL_FIFO=/tmp/panel_fifo
export UNIBLOCKS_PID=/tmp/ub_pid
export DONT_DISTURB_MODE=/tmp/ddm
export REC_PID=/tmp/rec_pid
export WALLPAPERS=$GIT/own/eyelust
export ICONS=~/.local/share/icons/system
export INACTIVITY=900
export LAYOUT_EN=~/.config/X11/xmodmap-en
export LAYOUT_AR=~/.config/X11/xmodmap-ar
export LAYOUT_BN=~/.config/X11/xmodmap-bn
export QT_QPA_PLATFORMTHEME="gtk2"
export GROFF_FONT_PATH=~/.local/share/fonts/Groff

# Stolen from Luke Smith
export LF_ICONS="di=📁:\
fi=📃:\
tw=🤝:\
ow=📂:\
ln=⛓:\
or=❌:\
ex=🎯:\
*.txt=✍:\
*.png=🖼:\
*.ico=🖼:\
*.jpg=📸:\
*.jpeg=📸:\
*.gif=🖼:\
*.svg=🗺:\
*.xcf=🖌:\
*.xml=📰:\
*.gpg=🔒:\
*.pdf=📚:\
*.djvu=📚:\
*.epub=📚:\
*.csv=📓:\
*.xlsx=📓:\
*.tex=📜:\
*.md=📘:\
*.r=📊:\
*.R=📊:\
*.rmd=📊:\
*.Rmd=📊:\
*.mp3=🎵:\
*.wav=🎵:\
*.m4a=🎵:\
*.flac=🎵:\
*.mkv=🎥:\
*.mp4=🎥:\
*.zip=📦:\
*.rar=📦:\
*.7z=📦:\
*.tar.gz=📦:\
*.1=ℹ:\
*.nfo=ℹ:\
*.info=ℹ:\
*.log=📙:\
*.iso=📀:\
*.img=📀:\
*.bib=🎓:\
*.ged=👪:\
*.part=💔:\
*.torrent=🔽:\
*.js=🎮:\
*.sass=🎨:\
*.css=🖌:\
*.html=🌎:\
*.json=📒:\
"

. ~/.private 2> /dev/null

###############################################################################
#                             Maintain a Clean Home Directory
###############################################################################

export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share
export XDG_CACHE_HOME=~/.local/share/cache
export XINITRC=~/.config/X11/xinitrc
export ZDOTDIR=~/.config/zsh
export GNUPGHOME=~/.local/share/gnupg
export GOPATH=~/.local/share/go
export HISTFILE=~/.local/share/history
export UNISON=~/.local/share/unison
export WGETRC=~/.config/wget/wgetrc
export XAUTHORITY=~/.config/X11/.Xauthority
export INPUTRC=~/.config/inputrc

################################################################################
#                             Paths
################################################################################

PATH=$PATH:~/.local/bin
PATH="$PATH:$(du $GIT/own/alfred | cut -f2 | tr '\n' ':' | sed 's/:$//')"
export PATH

###############################################################################
#                             Misc
###############################################################################

# export PASSWORD_STORE_DIR=~/.config/pass
# export NODE_ID=/tmp/node_id
# export MOZ_USE_XINPUT2="1"
# export LESS=-R
# export LESS_TERMCAP_mb="$(printf '%b' '[1;31m')"
# export LESS_TERMCAP_md="$(printf '%b' '[1;36m')"
# export LESS_TERMCAP_me="$(printf '%b' '[0m')"
# export LESS_TERMCAP_so="$(printf '%b' '[01;44;33m')"
# export LESS_TERMCAP_se="$(printf '%b' '[0m')"
# export LESS_TERMCAP_us="$(printf '%b' '[1;32m')"
# export LESS_TERMCAP_ue="$(printf '%b' '[0m')"
# export LESSOPEN="| /usr/bin/highlight -O ansi %s 2>/dev/null"

# cat /etc/*-release | grep \"void\" >/dev/null && export TERMINAL=alacritty

###############################################################################
#                             Auto Start X on TTY1
###############################################################################

[ "$(fgconsole 2> /dev/null)" = 1 ] &&
    exec startx ~/.config/X11/xinitrc -- vt1 > /dev/null 2>&1

###############################################################################
#                             Swap Escape & Caps Lock if On TTY
###############################################################################

sudo -n loadkeys ~/.local/share/misc/ttyMaps.kmap 2> /dev/null
