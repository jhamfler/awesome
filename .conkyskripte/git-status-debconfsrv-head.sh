#!/bin/bash
cd ~/git/debconfsrv
git branch|grep "*"|awk '{print $2}'
