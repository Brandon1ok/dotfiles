#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

if [ -f ~/.Xresources ]; then
    xrdb -merge ~/.Xresources
fi

export LANG=en_US.UTF-8

export PANEL_FIFO="/tmp/panel_fifo"
 
#set monitors
#xrandr --output DVI-I-1 --mode 1920x1080 --rate 60 --primary --output HDMI-0 --mode 1920x1080 --rate 60 --right-of DVI-I-1 &

#set wallpaper

wal -i "$HOME/Pictures/wallpapers" -o wal-set

#start apps
urxvtd -q -f -o &
thunar --daemon &
redshift &
compton &
unclutter &
nm-applet &
cover.sh &
#stalonetray --dockapp-mode simple &
#transmission-daemon &
#sonarr &

#start window manager
#sxhkd &
#exec bspwm
exec i3
#exec openbox-session

