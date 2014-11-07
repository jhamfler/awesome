#!/bin/sh
ifconfig eth0 | egrep -o "inet Adresse:([0-9]{1,3}.){3}[0-9]{1,3}" | egrep -o "([0-9]{1,3}.){1,3}[0-9]{1,3}"
