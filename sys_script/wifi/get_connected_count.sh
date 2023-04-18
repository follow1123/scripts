#!/bin/sh

count=$(wpa_cli -i wlp3s0 list_networks | awk 'END{print NR}')
echo $(($count-1))
