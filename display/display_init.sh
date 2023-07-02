#!/bin/bash

# 加载显示相关函数
source "$(cd $(dirname $0); pwd)/display.sh"

declare -A local_display
local_display["key"]=1
local_display["name"]="DP-2"
local_display["mode"]="1920x1080"
local_display["rate"]="144.00"
local_display["scale"]="0.8x0.8"

output local_display
