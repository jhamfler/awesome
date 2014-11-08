#!/bin/bash
top -n 1 -b|grep Mem:|awk '{print $9/$3*100.}'
