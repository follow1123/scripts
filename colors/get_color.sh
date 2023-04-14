# 获取颜色配置方法

awk  -F '=' '/^'$1'/{print $2}' ../../../resource/colors
