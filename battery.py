#!/usr/bin/env python
import os
import subprocess
#output = subprocess.check_output("cat /etc/services", shell=True)

output = subprocess.check_output("upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/percentage/ {print $2}'",shell=True)
charging = subprocess.check_output("upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '/discharging/ {print $2}'",shell=True)
filename = "/home/nick/Documents/.battery"

   


level = int(output[:-2])
low = False
limit = 60
high = 80
low = 25

if("discharging" not in charging):
    print("/home/nick/Pictures/icons/battery_charging.svg")
else:
    if(level >= high):
        print("/home/nick/Pictures/icons/battery_good.svg")
    elif((level < high) and (level >= low)):
        print("/home/nick/Pictures/icons/battery_medium.svg")
    else:
        print("/home/nick/Pictures/icons/battery_low.svg")

if(level < 75 and "discharging" in charging):
    if not os.path.exists(filename):
        print("?")
        subprocess.call("notify-send",shell = True)
        file = open(filename,"w")
        file.write("t")
        file.close()

        
#print(charging)
print(str(level) + "%")
