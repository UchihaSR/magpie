#!/bin/sh

. ~/.private 2> /dev/null

#===============================================================================
#                             Defaults Programs
#===============================================================================

export WM="launch --dwm"
export TERMINAL="st"
export STATUSBAR="uniblocks -g"
export DMENU="dmenu -i"

# export WM="bspwm"
# export TERMINAL="alacritty"
# export STATUSBAR="yabar"
# export DMENU="rofi -dmenu -i"

export COMPOSITOR="xcompmgr"
export BROWSER="firefox"
export EDITOR="nvim"
export FILE="lf"
export MANPAGER="nvim +Man!"
export PAGER="nvim -R +AnsiEsc"
export READER="zathura"
export VISUAL="nvim"

#===============================================================================
#                             System Stuff
#===============================================================================

export XDG_CONFIG_HOME=~/.config
export XDG_DATA_HOME=~/.local/share
export XDG_CACHE_HOME=~/.local/share/cache

# export DDM=/tmp/ddm
# export RECPID=/tmp/rec_pid
export ICONS=~/.local/share/icons/system
export QT_QPA_PLATFORMTHEME="gtk2"
export GROFF_FONT_PATH=~/.local/share/fonts/Groff
export FZF_DEFAULT_OPTS="-i -e --reverse --border --margin 15%,25% --info hidden --bind=tab:down,btab:up"

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
*.py=$(printf "\003[33m%s\033[m" "py"):\
"

#===============================================================================
#                             Housekeeping
#===============================================================================

export XINITRC=~/.config/X11/xinitrc
export ZDOTDIR=~/.config/zsh
export GNUPGHOME=~/.local/share/gnupg
export GOPATH=~/.local/share/go
export HISTFILE=~/.local/share/history
export UNISON=~/.local/share/unison
export WGETRC=~/.config/wget/wgetrc
export XAUTHORITY=~/.config/X11/.Xauthority
export INPUTRC=~/.config/inputrc
export STARDICT_DATA_DIR=~/.local/share
# export NPM_CONFIG_PREFIX=~/.local/share/npm
#export VIMINIT="if !has('nvim') | source $XDG_CONFIG_HOME/vim/vimrc | endif"

#===============================================================================
#                             Paths
#===============================================================================

PATH=$PATH:~/.local/bin
PATH="$PATH:$(du "$GIT"/own/alfred | cut -f2 | paste -sd ':')"
# PATH="$PATH:$(du $GIT/own/alfred | cut -f2 | tr '\n' ':' | sed 's/:$//')"
export PATH

#===============================================================================
#                             Misc
#===============================================================================

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

#===============================================================================
#                         Auto Start X on TTY1
#===============================================================================

[ "$(fgconsole 2> /dev/null)" = 1 ] &&
   exec startx ~/.config/X11/xinitrc -- vt1 > /dev/null 2>&1

#===============================================================================
#                        Swap Escape & Caps Lock when on TTY
#===============================================================================

sudo -n loadkeys ~/.local/share/misc/ttyMaps.kmap 2 > /dev/null
