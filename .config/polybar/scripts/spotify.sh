#!/bin/sh

player_status=$(playerctl -p spotify status 2> /dev/null)

metadata="$(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)" 

if (( ${#metadata} >= 50 )); then
    metadata="${metadata[@]:0:47}..."
fi

if [ "$player_status" = "Playing" ]; then
    echo "%{T2}%{T-} ${metadata}"
elif [ "$player_status" = "Paused" ]; then
    echo "%{T2}%{T1} ${metadata}" 
else
    echo ""
fi
