# 日志存放位置
log_file=$HOME/sldm/log/display_init_log
hdmi_status=$(xrandr -q | grep "HDMI-1 connected")
if [ -n "$hdmi_status" ]; then
	# 使用外接显示器
	echo "关闭笔记本显示器" >> $log_file 
	$(xrandr --output eDP-1 --off)
	echo "使用外接显示器" >> $log_file 
	$(xrandr --output HDMI-1 --mode 1920x1080 --rate 120.00 --scale 1x1 --auto)
else
	# 使用笔记本显示器
	echo "使用笔记本显示器" >> $log_file
	$(xrandr --output eDP-1 --mode 1920x1080 --rate 59.98 --scale 0.75x0.75)
fi
