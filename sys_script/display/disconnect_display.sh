#!/bin/bash

cur_path=$(cd "$(dirname $0)"; pwd)/$0
print_log="$USER_SCRIPT_HOME/log/print_log.sh -p $cur_path"
print_info=$print_log
print_wran="$print_log -l 1"
print_error="$print_log -l 2"

name=$1
echo $name
if [ -n "$name" ]; then
	$($print_info -n $LINENO -m "断开显示器：$name")
	$(xrandr --output $name --off)
else
	$($print_wran -n $LINENO -m "未传递显示器参数")
fi
