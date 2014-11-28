#!/bin/sh
#cat /sys/class/power_supply/*/capacity
voll=$(cat /sys/class/power_supply/CMB1/charge_full)
jetzt=$(cat /sys/class/power_supply/CMB1/charge_now)
echo "$jetzt*100/$voll"|bc

