#!/bin/sh


image="echo /home/nick/Pictures/icons/package.svg"
output=$(apt list --upgradable | wc -l | awk 'NR==1')
updates=`expr $output - 1`
eval $image
echo $updates "updates"
