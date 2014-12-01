#!/bin/bash
cd ~/git/awesome
git branch|grep "*"|awk '{print $2}'
