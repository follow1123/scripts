#!/bin/bash

hp=$USER_SCRIPT_HOME
get_config="$USER_SCRIPT_HOME/common/get_config.sh $hp/log/config"
get_param="$USER_SCRIPT_HOME/common/get_param.sh $*"
echo "$get_param"
filepath=$($get_param p)
echo "filepath = $filepath"
line_no=$($get_param n)
message=$($get_param m)
level_param=$($get_param l)
level="INFO"
log_path=$($get_config info_path)
if [ "$level_param" = "1" ]; then
	level="WRAN"
	log_path=$($get_config wran_path)
elif [ "$level_param" = "2" ]; then
	level="ERROR"
	log_path=$($get_config error_path)
fi
curDate=$(date '+%Y-%m-%d %H:%M:%S')

if [ ! -d $log_path ]; then 
	mkdir -p $log_path
fi

echo "$curDate $level $filepath($line_no) $message" >> "$log_path/$(date '+%Y-%m-%d').log"

