#!/bin/bash
a=$(top -n 1 -b|grep Mem:|awk '{print $3}')
b=$(top -n 1 -b|grep Swap:|awk '{print $9}')
echo "scale=5; $b. / $a. *100"|bc

