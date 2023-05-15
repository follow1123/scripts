#!/bin/bash


hp=$HOME/scripts
cur_path=$(cd "$(dirname $0)"; pwd)/$0

name=$1
if [ "$name" = "eDP-1" ]; then
	$(xrandr --output HDMI-1 --off)
	$(xrandr --output eDP-1 --mode 1920x1080 --rate 59.98 --scale 0.75x0.75)
elif [ "$name" = "HDMI-1" ]; then
	$(xrandr --output eDP-1 --off)
	$(xrandr --output HDMI-1 --mode 1920x1080 --rate 120.00 --scale 1x1 --auto)
fi

