#!/usr/bin/env python
import subprocess


output = subprocess.check_output("amixer sget Master | grep 'Right:' | awk -F'[][]' '{print $2 }'",shell=True);



high = 60
low = 10 


if(output[:1] == "0"):
    print("/home/nick/Pictures/icons/volume_off.svg")
else:
    print("/home/nick/Pictures/icons/volume_low.svg")



print(output);
