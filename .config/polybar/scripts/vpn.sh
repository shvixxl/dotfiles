#!/usr/bin/sh

if protonvpn s | grep -q "Disconnected" ; then
    echo "輦"
else
    echo "聯"
fi

