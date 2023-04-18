# 电量
battery=$(cat /sys/class/power_supply/BAT0/capacity)
battery_info=$battery
if [ ${battery} -le 20 ]
then
	battery_info="电量低${battery_info}%"
elif [ ${battery} -le 50 ]
then
	battery_info="$battery_info%"
else
	battery_info=""
fi
echo $battery_info
