#!/bin/bash
cd /sys/class/power_supply/
batterie=$(ls -1 */charge_full|egrep -o '.+\/'|sed -e 's/\///g')
sed -i "s/CMB1/$batterie/g" ~/.conkyrc 

cd ~/.conkyskripte/
sed -i "s/CMB1/$batterie/g" batt-p.sh
