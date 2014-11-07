#!/bin/bash
r=$(xrandr|grep VGA|grep disconnected)
if [[ $r == "" ]]; then
  ~/.screenlayout/rechtermonitor.sh
else
  .screenlayout/laptop.sh
fi
