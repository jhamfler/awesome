r=$(xrandr|grep VGA|grep disconnected)
if [[ $r == "" ]]; then
  ~/.screenlayout/rechtermonitor.sh
else
  ~/.screenlayout/laptop.sh
fi
killall conky
killall nm-applet
nm-applet &
cinnamon-sound-applet &
dropbox start
conky &
