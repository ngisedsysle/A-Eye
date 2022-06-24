#!/bin/bash
fswebcam -c webcam.conf
./jpgtobmp.py
rm temp.jpeg
mosquitto_pub -t toIA -m start