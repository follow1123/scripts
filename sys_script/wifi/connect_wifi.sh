net_card=wlp3s0
wifiId="$1"
if [ ! $wifiId ]; then
	wifiId="1"
fi
curWifiId=$(sh "")
if [ $wifiId = $curWifiId ]; then 
	exit 1
fi
if [  $curWifiId ]; then
	wpa_cli -i $net_card disable_network $curWifiId
fi
wpa_cli -i $net_card enable_network $wifiId
dhclient $net_card -x
dhclient $net_card

echo 'wifi 切换成功'

