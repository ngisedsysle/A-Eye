import cv2
import numpy as np
from PIL import Image

LIVE_CAP = 0

if LIVE_CAP == 0 :
    capture = cv2.VideoCapture('gstudio.m4v')
else :
    capture = cv2.VideoCapture(0)

if(capture.isOpened() == False) :
    print("Error opening video file")

i = 0
while(capture.isOpened()) :
    ret, frame = capture.read()
    if ret == True :
        cv2.imshow('Frame', frame)
        cv2.waitKey(100)
        i += 1
        if (i == 30) :
            color_coverted = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
            im = Image.fromarray(color_coverted)
            im.save('temp.bmp')
            i = 0
    else :
        break

capture.release()

cv2.destroyAllWindows()
