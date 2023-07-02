#!/bin/bash

# 显示系统托盘
show(){
	trayer --edge right --align right --width 20 --height 28 --padding 10 --margin 29 --iconspacing 20 --transparent true --tint 0xFF101010 --alpha 0 &
}

# 隐藏系统托盘
hide(){
	killall trayer
}

# 判断系统托盘是否在运行，并返回pid
is_running(){
	ps -ef | grep trayer | awk '/alpha 0$/{print $2}'
}

if [ -n "$(is_running)" ]; then
	hide
else
	show
fi
