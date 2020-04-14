#!/bin/sh
# Make sure you have inotify-tools (and brightnessctl obv) installed otherwise inotifywait won't work

brightness_level=$(brightnessctl g)
brightness_max=$(brightnessctl m)
brightness_percent=$(( $brightness_level * 100 / $brightness_max ))

getIcon() {
	if [ "$brightness_percent" -ge 90 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 75 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 50 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 40 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 25 ]; then
	    icon=""
	elif [ "$brightness_percent" -ge 10 ]; then
	    icon=""
	else
	    icon=""
	fi
	echo "$icon"
}

inotifywait -q -m -e close_write /sys/class/backlight/intel_backlight/brightness | 
	echo "$(getIcon) $brightness_percent%"
