#!/bin/bash
if (( $# < 1 )); then
  echo "Skript tells the current state of presence."; echo ""
  echo "Usage:"
  echo "    ./toggleState <name> [<address>]"
  echo "Examples:"
  echo "    ./toggleState dogi"
  echo "    ./toggleState dogi 10.12.114.181:3000"
  exit
fi
address="10.12.114.181:3000"
on=$(echo $(curl -s -X GET -H "Content-Type:application/json" http://$address/api/state/get/) | grep -oE "$1.*?}" | grep -oE 'state.*?}' | grep -oE ':".*?"' | grep -o 'on')
if [ X"$on" == X"" ]; then
  echo "0"
  exit
fi
echo "1"
