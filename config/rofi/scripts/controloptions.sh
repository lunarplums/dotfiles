#!/bin/bash

res=$(echo "Reload Window Manager|Startup Script|Terminal|Process Manager|Lock System|Logout|Reboot|Shutdown" | rofi -theme Control -hover-select -sep "|" -dmenu -p 'システム')
 
#if [ $res = "lock" ]; then
#    /home/khoaduccao/.config/lock.sh
#fi

if [ $res = "Reload Window Manager" ]; then
    icewm --restart
fi

if [ $res = "Startup Script" ]; then
    ~/.icewm/startup
fi

if [ $res = "Terminal" ]; then
    kitty
fi

if [ $res = "Process Manager" ]; then
    sysmontask
fi

if [ $res = "Lock System" ]; then
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