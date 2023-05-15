#!/bin/bash

cur_path=$(cd "$(dirname $0)"; pwd)/$0

name=$1
if [ -n "$name" ]; then
	xrandr -q | awk '/'$name'/{if($2=="connected"){print 1} else {print 0}}'
fi
