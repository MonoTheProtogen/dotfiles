#!/usr/bin/python

import subprocess

vcurrent = subprocess.check_output(["wpctl", "get-volume", "@DEFAULT_SINK@"], text=True)
vnotext = vcurrent.strip("Volume: ")
vpercent = vnotext.strip("\n")
vfinal = str(int(float(vpercent) * 100))

msg = "Volume: " + vfinal + "%"

subprocess.run(["dunstify", "-i", "audio-speakers-symbolic", "-r", "9998", msg])
