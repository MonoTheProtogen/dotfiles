#!/usr/bin/python

import subprocess

bmax = subprocess.check_output(["brightnessctl", "m"], text=True)
bcurrent = subprocess.check_output(["brightnessctl", "g"], text=True)
bpercent = int(bcurrent) / int(bmax)
msg = "Screen Brightness: " + str(int(round(bpercent, 2) * 100)) + "%"

subprocess.run(["dunstify", "-i", "video-display-symbolic", "-r", "9999", msg])
