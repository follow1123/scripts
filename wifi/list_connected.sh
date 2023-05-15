#!/bin/sh

echo '-e' "$(sudo wpa_cli -i wlp3s0 list_networks)" | awk 'NR>1{if($4=="[CURRENT]"){print "*",$2}else{print " ",$2}}'
