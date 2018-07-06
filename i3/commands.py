import os
import argparse
from subprocess import call

parser = argparse.ArgumentParser(description='Process')
parser.add_argument('--poweroff', action="store_true")
parser.add_argument('--lock', action="store_true")
parser.add_argument('--hibernate', action="store_true")
parser.add_argument('--reboot', action="store_true")
parser.add_argument('--suspend', action="store_true")
args = parser.parse_args()



if(args.hibernate):
    print("hibernate")
elif(args.suspend):
    print("lock")
elif(args.reboot):
    call(['sudo','reboot'])
elif(args.lock):
    call("i3lock")
elif(args.poweroff):
    call(['sudo','poweroff'])


