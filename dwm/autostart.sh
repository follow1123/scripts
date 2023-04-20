#!/bin/sh

fcitx &
# dwm启动显示器切换
sh $USER_SCRIPT_HOME/sys_script/display/display_init.sh
# dwm启动切换随机壁纸
sh $USER_SCRIPT_HOME/sys_script/switch_bg_img.sh
# dwm状态栏
dwmblocks &
# 通知中心
dunst &
# picom &
