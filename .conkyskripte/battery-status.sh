#!/bin/sh
upower -i /org/freedesktop/UPower/devices/battery_CMB1 | grep percentage | cut -c 26-29
