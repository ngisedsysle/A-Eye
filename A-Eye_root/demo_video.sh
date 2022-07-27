#!/bin/bash
mosquitto_pub -t A-Eye/videoCom -m stop
pkill -9 read_video
pkill -9 demo_video
python3 ./read_video.py &
