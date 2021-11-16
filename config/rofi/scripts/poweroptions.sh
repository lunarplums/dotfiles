#!/bin/bash

res=$(echo "Lock|Logout|Reboot|Shutdown" | rofi -theme Synthesis2002 -hover-select -sep "|" -dmenu -p '')
 
#if [ $res = "lock" ]; then
#    /home/khoaduccao/.config/lock.sh
#fi

if [ $res = "Lock" ]; then
    slimlock
fi

if [ $res = "Logout" ]; then
    killall icewm
fi

if [ $res = "Reboot" ]; then
    systemctl reboot
fi

if [ $res = "Shutdown" ]; then
    systemctl poweroff
fi
exit 0

