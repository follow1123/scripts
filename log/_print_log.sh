#!/bin/bash

# filepath=$(cd "$(dirname "$0")"; pwd)
filepath=$1
tag=$2
message=$3
line_no=$4
curDate=$(date '+%Y-%m-%d %H:%M:%S')

echo "$curDate $tag $filepath($line_no) $message"
