curPID=$(ps -ef | grep trayer | awk '/alpha 0$/{print $2}')
if [ $curPID ]; then
	killall trayer
else
	trayer --edge right --align right --width 20 --height 28 --padding 10 --margin 29 --iconspacing 20 --transparent true --tint 0xFF101010 --alpha 0 &
fi
