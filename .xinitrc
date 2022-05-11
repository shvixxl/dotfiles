#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

[[ -f ~/.Xdefaults ]] && xrdb -merge ~/.Xdefaults


userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap


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

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
    for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
        [ -x "$f" ] && . "$f"
    done
    unset f
fi


## Other

# Set cursor name
xsetroot -cursor_name left_ptr

# Map super keys to trigger when used alone
xcape -e 'Super_L=Super_L|Shift_L|space;Super_R=Super_R|Shift_R|z' &

# Restore color-scheme
wal -R -n &

# Set up wallpaper
feh --bg-scale --randomize .local/share/wallpapers/*

# Polkit
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &


## Applications

# sxhkd - hotkey daemon
sxhkd &

# Tusuma - touchapad gestures
fusuma &

# Greenclip - clipboard manager
greenclip daemon &

# Picom - compositor
picom -b --experimental-backends &

# Redshift - eye saver
redshift &


## Window managers

# bspwm - tiling window manager
exec bspwm

