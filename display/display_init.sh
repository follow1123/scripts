!/bin/bash

# hp=$HOME/scripts

# display="$hp//display"
#
# def_display="HDMI-1"
#
# def_display_status=$($display/get_display_status.sh $def_display)
# if [ "$def_display_status" = "1" ]; then
# 	$($display/connect_display.sh "HDMI-1")	
# else
# 	$($display/connect_display.sh "eDP-1")	
# fi
display_status=$(xrandr -q | grep "HDMI-1 connected")
if [ -n "$display_status" ]; then
	xrandr --output HDMI-1 --mode 1920x1080 --rate 120.00 --scale 1x1 --auto > /dev/null
	xrandr --output eDP-1 --off > /dev/null
else
	xrandr --output eDP-1 --mode 1920x1080 --rate 59.98 --scale 0.75x0.75 > /dev/null
fi
