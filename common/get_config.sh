#!/bin/bash

config_path=$1
config_key=$2
if [ $config_path -a $config_key ]; then 
	awk -F '=' '/'$config_key'/{print $2}' "$config_path"
fi
