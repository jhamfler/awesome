#!/bin/bash
bat=$(acpi -b|grep Charging)
#echo $bat
if [[ $bat == "" ]]; then
	echo "0"
else
	echo "1"
fi
