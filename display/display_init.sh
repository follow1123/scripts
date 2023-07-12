#!/bin/bash

# 加载显示相关函数
source "$(cd $(dirname $0); pwd)/display.sh"

# 默认显示器
declare -A local_display
local_display["key"]=1
local_display["name"]="DP-2"
local_display["mode"]="1920x1080"
local_display["rate"]="144.00"
local_display["scale"]="0.8x0.8"

# dp接口1
declare -A dp0_display
dp0_display["key"]=2
dp0_display["name"]="DP-0"
dp0_display["mode"]="2560x1440"
dp0_display["rate"]="170.00"
dp0_display["scale"]="1x1"

# dp接口2
declare -A dp1_display
dp1_display["key"]=3
dp1_display["name"]="DP-1"
dp1_display["mode"]="2560x1440"
dp1_display["rate"]="170.00"
dp1_display["scale"]="1x1"


local_display_name=${local_display['name']}

dp0_display_name=${dp0_display['name']}

dp1_display_name=${dp1_display['name']}

# 优先显示外接显示器并关闭默认显示器
if [ "$(is_connected $dp0_display_name)" -eq 1 ]; then
	output dp0_display
	sleep 1
	off $local_display_name
	# echo 1
elif [ "$(is_connected $dp1_display_name)" -eq 1 ]; then
	output dp1_display
	sleep 1
	off $local_display_name
	# echo 2
else
	# echo 3
	output local_display
fi
