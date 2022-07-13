import cv2
import numpy as np
from PIL import Image
import matplotlib as plt
import paho.mqtt.client as mqtt

LIVE_CAP = 0

if LIVE_CAP == 0 :
    capture = cv2.VideoCapture('../gstudio.m4v')
else :
    capture = cv2.VideoCapture(0)

if(capture.isOpened() == False) :
    print("Error opening video file")

def callback(client, userdata, message) :
    if (capture.isOpened()) :
        global im
        im.save('temp.bmp')

mqtt_c = mqtt.Client()
mqtt_c.connect('localhost', port=1883)
mqtt_c.subscribe("A-Eye/videoCom")
mqtt_c.connect=callback

i = 0
while(capture.isOpened()) :
    ret, frame = capture.read()
    if ret == True :
        cv2.imshow('Frame', frame)
        cv2.waitKey(100)
        color_coverted = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        im = Image.fromarray(color_coverted)
    else :
        break

capture.release()

cv2.destroyAllWindows()
