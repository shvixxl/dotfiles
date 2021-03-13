#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

polybar -q bar -c "$HOME/.config/polybar/config.ini" >>/tmp/polybar.log 2>&1 &

