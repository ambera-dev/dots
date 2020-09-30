#!/usr/bin/env bash

#Kill any running instances of polybar if needed
killall -q polybar

#change resolution manually if not set
xrandr --size 1920x1080
#run new instance with custom config
polybar -c ../polybar/glass main
#set background to background used in previous session
~/.fehbg &
#enable composite manager
xcompmgr &
