#!/bin/bash

netcard=wlp0s20f3
# 开启wpa_supplicant 服务
function start_wpa(){
	wpa_supplicant -B -i $1 -c /etc/wpa_supplicant/wpa_supplicant.conf
}

# 添加一个wifi
function add_network(){
	local net_id=$(wpa_cli -i $netcard add_network)
	wpa_cli -i $netcard set_network $net_id ssid "$1" > /dev/null
	wpa_cli -i $netcard set_network $net_id psk "$2" > /dev/null
	wpa_cli -i $netcard set_network $net_id priority 2 > /dev/null
	wpa_cli -i $netcard set_network $net_id scan_ssid 1 > /dev/null
	wpa_cli -i $netcard save_config > /dev/null
}

# 连接wifi
function connect(){
	wpa_cli -i $netcard enable_network $1 > /dev/null
	wpa_cli -i $netcard select_network $1 > /dev/null
}

# 重新分配ip
function reload_ip(){
	dhclient -r > /dev/null
	dhclient > /dev/null
}
