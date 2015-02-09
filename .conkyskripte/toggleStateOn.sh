#!/bin/bash
# getting results from REST API
if (( $# < 1 )); then
  echo "Skript toggles the current state of presence."; echo ""
  echo "Usage:"
  echo "    ./toggleState <name> [<address>]"
  echo "Examples:"
  echo "    ./toggleState dogi"
  echo "    ./toggleState dogi 10.12.114.181:3000"
  exit
fi
address="10.12.114.181:3000"
curl -X PUT -d '{"state":"on"}' -H "Content-Type:application/json" "http://$address/api/state/set/$1"
