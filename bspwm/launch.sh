#!/bin/bash

#background change
~/.fehbg

#Terminate any running instances of polybar
killall -q polybar

#Wait until processes are shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

#launch polybar
polybar -c ~/.config/polybar/bitesize-extended main &
compton --no-fading-openclose &

