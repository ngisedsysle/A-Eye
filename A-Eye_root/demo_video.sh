pkill -9 read_video
python3 ../../read_video.py
mosquitto_pub -t A-Eye/videoCom -m start
mosquitto_pub -t toIA -m start
