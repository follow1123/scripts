#!/bin/bash

hp=$USER_SCRIPT_HOME
get_config="$USER_SCRIPT_HOME/common/get_config.sh $hp/log/config"

echo_log="$hp/log/_echo_log.sh $*"
write_log="$hp/log/_write_log.sh $*"
is_write=$($get_config is_write)
if [ "$is_write" = "1" ]; then
	$($write_log)
else
	echo $($echo_log)
fi
