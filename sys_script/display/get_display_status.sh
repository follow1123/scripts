#!/bin/bash

cur_path=$(cd "$(dirname $0)"; pwd)/$0
print_log="$USER_SCRIPT_HOME/log/print_log.sh -p $cur_path"
print_info=$print_log
print_wran="$print_log -l 1"
print_error="$print_log -l 2"

name=$1
if [ -n "$name" ]; then
	xrandr -q | awk '/'$name'/{if($2=="connected"){print 1} else {print 0}}'
else
	$($print_wran -n $LINENO -m "未输入显示器参数")
fi
