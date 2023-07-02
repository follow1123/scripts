#!/bin/sh

case $BLOCK_BUTTON in
        1) $HOME/space/scripts/sys_trayer.sh > /dev/null ;; 
        6) st nvim "$0";;
esac

printf "%s" ""
