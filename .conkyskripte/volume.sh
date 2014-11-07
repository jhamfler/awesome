#!/bin/sh
amixer sget 'Master' | egrep -o "[0-9]{1,3}%"
