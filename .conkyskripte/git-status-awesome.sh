#!/bin/sh
cd ~/git/awesome/
lines=$(git status --porcelain|wc -l)
push=$(git diff --stat origin|wc -l)
if [ "$lines" -eq "0" ]; then
  if [ "$push"  -eq "0" ]; then
    echo "2"
    exit
  fi
  echo "1"
else
  echo "no commit and no push"
fi
