#!/bin/sh

shell_dir=/home/yf/scripts/sys_script/wifi
net_card=wlp3s0
wifi_count=$(sh "$shell_dir/get_connected_count.sh")
cur_id=$(sh "$shell_dir/get_current_id.sh")
while [ ! $cur_id ]
do
	cur_id=$(./get_current_id.sh)
done

echo "断开当前wifi：$cur_id"
next_id=$((($cur_id+1)%$wifi_count))
echo "连接下一个wifi：$next_id"
wpa_cli -i $net_card disable_network $cur_id
wpa_cli -i $net_card enable_network $next_id

dhclient $net_card -x
dhclient $net_card 
# cur_id=$(./get_current_id.sh)
# while [ ! $cur_id ]
# do
	# cur_id=$(./get_current_id.sh)
# done
echo "已切换wifi"
