#!/bin/sh

wpa_cli -i wlp3s0 list_networks | awk '$4=="[CURRENT]"{print $1}'
