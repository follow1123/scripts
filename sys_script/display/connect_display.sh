#!/bin/bash


hp=$USER_SCRIPT_HOME
cur_path=$(cd "$(dirname $0)"; pwd)/$0
print_log="$USER_SCRIPT_HOME/log/print_log.sh -p $cur_path"
print_info=$print_log
print_wran="$print_log -l 1"
print_error="$print_log -l 2"

name=$1
if [ "$name" = "eDP-1" ]; then
	$($print_info -n $LINENO -m "连接显示器：$name")
	$(xrandr --output HDMI-1 --off)
	$(xrandr --output eDP-1 --mode 1920x1080 --rate 59.98 --scale 0.75x0.75)
elif [ "$name" = "HDMI-1" ]; then
	$($print_info -n $LINENO -m "连接显示器：$name")
	$(xrandr --output eDP-1 --off)
	$(xrandr --output HDMI-1 --mode 1920x1080 --rate 120.00 --scale 1x1 --auto)
else
	$($print_wran -n $LINENO -m "未输入显示器参数")
fi

