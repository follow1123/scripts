#!/bin/bash

get_param="$USER_SCRIPT_HOME/common/get_param.sh $*"
filepath=$($get_param p)
line_no=$($get_param n)
message=$($get_param m)
level_param=$($get_param l)
level="INFO"
if [ "$level_param" = "1" ]; then
	level="WRAN"
elif [ "$level_param" = "2" ]; then
	level="ERROR"
fi
curDate=$(date '+%Y-%m-%d %H:%M:%S')

echo "$curDate $level $filepath($line_no) $message"
