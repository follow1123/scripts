#!/bin/sh

case $BLOCK_BUTTON in
        6) st nvim "$0";;
esac
# 电量
battery=$(cat /sys/class/power_supply/BAT0/capacity)
battery_info=$battery
if [ ${battery} -le 20 ]; then
	battery_info="电量低${battery_info}%"
elif [ ${battery} -le 50 ]; then
	battery_info="$battery_info%"
else
	battery_info=
fi
if [ -n "$battery_info" ]; then
	printf " %s" "$battery_info"
fi
