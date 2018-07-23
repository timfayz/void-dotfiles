#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Options
# ---------------------------------------------------------------
# Monitor
xrandr -s 1368x768
#xrandr --setprovideroutputsource modesetting NVIDIA-0
#xrandr --auto

# Screen saver
xset +dpms
#xset s off

# Default background
xsetroot -solid black
display -window root ~/Desktop/wall/wall7.jpg

# Keyboard
setxkbmap -layout "us,ru" -option "grp:win_space_toggle" -option "compose:ralt"

# Statusbar 
slstatus &>/dev/null &

# Network
nm-applet 1>/dev/null 2> .log_networkmanager &

# Autolock 
xautolock -time 10 -locker slock &>/dev/null &

# Dropbox
dropbox start &>/dev/null 
    
# Start session
# ---------------------------------------------------------------
while true; do
    dwm 2> /dev/null
done

