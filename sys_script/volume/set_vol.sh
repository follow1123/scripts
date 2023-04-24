#!/bin/sh

if [ -n "$1" ]; then
	echo 1
	amixer sset Master "$1" 
else
	echo 2
	amixer sset Master toggle
fi


