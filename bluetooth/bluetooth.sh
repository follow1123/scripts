#!/bin/bash

# 开启蓝牙
function poweron(){
	bluetoothctl power on > /dev/null
}

# 关闭蓝牙
function poweroff(){
	bluetoothctl power off > /dev/null
}

# 判断蓝牙是否打开
function is_powered(){
	if [ -n "$(bluetoothctl show | grep 'Powered: yes')" ]; then
		echo 1
	else
		echo 0
	fi
}

# 连接蓝牙
function connect(){
	bluetoothctl connect $1 > /dev/null
}

# 断开蓝牙
function disconnect(){
	bluetoothctl disconnect $1 > /dev/null
}

# 判断蓝牙是否连接
function is_connected(){
	if [ -n "$(bluetoothctl info $1 | grep 'Connected: yes')" ]; then
		echo 1
	else
		echo 0
	fi
}
