#!/bin/zsh

LOGS=/tmp/xinit.log


# Load configurations
xrdb -merge $HOME/.Xresources &> $LOGS

# Set cursor name
xsetroot -cursor_name left_ptr &> $LOGS &

# Map super keys to trigger when used alone
xcape -e 'Super_L=Super_L|Shift_L|space;Super_R=Super_R|Shift_R|z' &> $LOGS &

# Restore color-scheme
wal -R -n &> $LOGS &

# Set up wallpaper
feh --bg-scale --randomize .local/share/wallpapers/* &> $LOGS &

# Enable keybindings
sxhkd &> $LOGS &

# Enable gestures
fusuma &> $LOGS &

# Start clipboard manager
greenclip daemon &> $LOGS &

# Start compositor
picom -b &> $LOGS &

# Start screen color temperature manager
redshift &> $LOGS &

# Start status bar
polybar-launch &> $LOGS &

# Start notifications daemon
dunst &> $LOGS &

# Start screenshot daemon
flameshot &> $LOGS &

# Start window manager
exec bspwm &> $LOGS
