#!/bin/bash 

## Add this to your wm startup file.

# Terminate already running bar instances
killall -q polybar

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar -c ~/.config/polybar/config main & 
  done
else

    polybar -c ~/.config/polybar/config main & 
fi

