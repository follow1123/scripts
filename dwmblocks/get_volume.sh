#!/bin/sh

sc_home="$HOME/space/scripts/volume"
case $BLOCK_BUTTON in
	2) sh $sc_home/set_vol.sh > /dev/null;;
	4) sh $sc_home/set_vol.sh 5%+ > /dev/null;;
	5) sh $sc_home/set_vol.sh 5%- > /dev/null;;
	6) st nvim "$0";;
esac
status=$(sh $sc_home/get_status.sh)
if [ "$status" = "on" ]; then
	printf "%s" "$(sh $sc_home/get_vol.sh)"
else
	printf "%s" ""
fi
