#!/bin/sh
cd ~/git/awesome/
lines=$(git status --porcelain | wc -l)
if [ "$lines" != "0" ]; then
  echo "1"
  exit
fi
push=$(git diff --stat origin)
if [ "$push" != "" ]; then
  echo "2"
  exit
fi
