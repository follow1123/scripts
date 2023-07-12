#!/bin/bash

# 判断对应显示器是否连接
function is_connected(){
	if [ -n "$(xrandr -q | grep "$1 connected")" ]; then
		echo 1
	else
		echo 0
	fi
}

# 输出显示设备
function output(){
	local display_name=$1
	local -n display=$display_name
	xrandr --output ${display['name']} --mode ${display['mode']} --rate ${display['rate']} --scale ${display['scale']} --auto > /dev/null
}

# 关闭显示设备
function off(){
	xrandr --output $1 --off > /dev/null
}

