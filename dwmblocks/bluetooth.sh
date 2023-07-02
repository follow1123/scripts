#!/bin/bash

source $HOME/space/scripts/bluetooth/bluetooth.sh

case $BLOCK_BUTTON in
	1) 
		if [ "$(is_powered)" -eq 0 ]; then 
			poweron
			sleep 1
			connect 78:A7:EB:03:83:DC
			printf "%s" "󰂱"
			exit
		fi
		;; 
	2) 
		if [ "$(is_powered)" -eq 1 ]; then 
			poweroff
			printf "%s" "󰂲"
		else
			poweron
			printf "%s" "󰂯"
		fi
		exit
		;; 
	6) st nvim "$0";;
esac

if [ "$(is_powered)" -eq 1 ]; then 
	if [ "$(is_connected)" -eq 1 ]; then 
		bluetooth_status="󰂱"
	else
		bluetooth_status="󰂯"
	fi
else
	bluetooth_status="󰂲"
fi

printf "%s" "$bluetooth_status"
