#!/usr/bin/env sh

# sh -c "sleep 0.5;  stalonetray -bg \"#000000\" --geometry \"1x1+125+5\"" &
# doas killall compton mpd polybar connman-vpnd picom
# Launches Pulseaudio
# pulseaudio --start &
# [ -f ~/.config/X11/Xresources ] && xrdb ~/.config/X11/Xresources &	

# Generates search list
gen-search-list &
# Clears existing processes
doas killall notification-daemon gebaard unclutter xcape sxhkd xss-lock xcompmgr
# Sets DPI (dpi.lv)
set-dpi &
# Set Locker
xset s "$INACTIVITY" &
xss-lock --ignore-sleep screensaver &
# Set Wallpaper
set-bg &
# Launches Compositor
sh -c "sleep 1 && $COMPOSITOR" & 
# Speeds key reapeat of pressing
xset r rate 200 30 & 
# xset r rate 210 40 & 
# Launch notification server
notification-daemon &
# dunst &
# Binds Multi-purpose keys
sh -c "xmodmap $LAYOUT_EN; xcape -e \"Super_L=Escape;Mode_switch=Tab\"" & 
# Binds key commands
sxhkd &                     
# sxhkd -m 1 &                     
# Binds gesture commands
gebaard -b &                     
# Removes X cursor
xsetroot -cursor_name left_ptr & 
# Hides cursor while idle
unclutter &                      
# Launch bar
sh -c "sleep 1 && $STATUS_BAR" & 
# Luanch Window Manager
exec "$WM"

