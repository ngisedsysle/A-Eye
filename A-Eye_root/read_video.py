from http import client
import ffmpeg
import sys
import numpy as np
from PIL import Image
from matplotlib import pyplot as plt
import paho.mqtt.client as mqtt
import time

def on_disconnect(client, userdata,rc=0):
    client.loop_stop()

def on_connect(client, userdata, flags, rc):
    print("Connected with result code "+str(rc))

probe = ffmpeg.probe('../../../gstudio.avi')
video_info = next(s for s in probe['streams'] if s['codec_type'] == 'video')
width = int(video_info['width'])
height = int(video_info['height'])
num_frames = int(video_info['nb_frames'])

out, err = (
    ffmpeg
    .input('../../../gstudio.avi')
    .output('pipe:', format='rawvideo', pix_fmt='rgb24')
    .run(quiet=True)
)
init = time.time()

def callback(client, userdata, message) :
    print("Message received")
    global init
    stop = time.time()
    video = (
        np
        .frombuffer(out, np.uint8)
        .reshape([-1, height, width, 3])
    )
    if (int((stop-init)*30) > num_frames) :
        init = time.time()
    im = Image.fromarray(video[int((stop-init)*30) ,:,:,:])
    im.save("../../temp.bmp")
    client_send = mqtt.Client(client_id="videoCom", clean_session=True)
    client_send.connect('localhost', port=1883)
    client_send.publish('toIA', 'start')
    client_send.disconnect()

client_mqtt = mqtt.Client(client_id="videoClient", clean_session=True)
client_mqtt.on_connect = on_connect
client_mqtt.on_message = callback
client_mqtt.on_disconnect = on_disconnect
client_mqtt.connect('localhost', port=1883)
client_mqtt.subscribe('A-Eye/videoCom', 0)
client_mqtt.publish('toIA', 'start')
client_mqtt.loop_forever()


