#!/bin/sh
a=$(amixer sget 'Master' |grep Left| egrep -o "[0-9]{1,3}%")
b=$(amixer sget 'Master' |grep '%'| egrep -o "[0-9]{1,3}%")
if [ -z $a ]; then
  echo "$b"
else
  echo "$a"
fi
