#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi

# xrandr stuff
#xrandr --output DP-1 --primary --mode 1920x1080
#xrandr --output eDP-1 --off

eval $(ssh-agent)
xset s off &
xset -dpms &
xset b off &
setxkbmap -layout de -variant nodeadkeys &
compton &
sh ~/.fehbg &
xrdb -load ~/.Xdefaults &

# vbox guest stuff
#VBoxClient --display &
#VBoxClient --clipboard &
#VBoxClient --seamless &

urxvtd -q -o -f &
#emacs --daemon &
#tint2 &
conky &
dunst &

# VBoxClient-all &

#exec cwm
exec openbox-session
#exec i3
#exec startxfce4
