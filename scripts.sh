#!/bin/sh

#set window manager to icewm
xfconf-query -c xfce4-session -p /sessions/Failsafe/Client0_Command -n -a -t string -s "icewm"

#packages
yay -S gtk3-classic libxfce4ui-nocsd
