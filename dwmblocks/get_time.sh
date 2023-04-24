#!/bin/sh

case $BLOCK_BUTTON in
	1) notify-send "$(date '+%Y-%m-%d %H:%M:%S')";;
	6) st nvim "$0";;
esac

printf "%s" "$(date '+%m-%d %H:%M:%S')"
# date "+%m-%d %H:%M"
