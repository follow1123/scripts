#!/bin/bash

cur_path=$(cd "$(dirname $0)"; pwd)/$0

name=$1
if [ -n "$name" ]; then
	$(xrandr --output $name --off)
fi
