#!/bin/sh
amixer sget 'Master' |grep Left| egrep -o "[0-9]{1,3}%"
