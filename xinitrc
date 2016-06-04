#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# German keyboard with capslock mapped to ESC
setxkbmap de -option caps:escape
xmodmap -e "clear Lock"
xmodmap -e "keycode 0x42=Escape"

# Configure multiple monitors
if [ `xrandr | grep -c ' connected '` -eq 2 ]; then
    xrandr --output DP-0 --auto --primary --output HDMI-0 --auto --right-of DP-0
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#sh $HOME/.fehbg &
#sh $HOME/bin/wallpaper &
feh --quiet --recursive --randomize --bg-fill --slideshow-delay 900 $HOME/Media/archpapers
#compton --config $HOME/.compton.conf -b
#nitogren --restore &
redshift -l 49.584966:8.1811209 &
exec i3
