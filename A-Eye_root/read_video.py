from PIL import Image
import paho.mqtt.client as mqtt
import time
from threading import Thread
import vlc

media = vlc.MediaPlayer()
mini_media = vlc.Media("../gstudio_singapour.avi")
media.set_media(mini_media)
def time_loop() :
    global media
    length = media.get_length()/1000
    if length == 0 :
        length = 77
    while(1) :
        time.sleep(length)
        media.set_time(0)
def video_player() :
    global media
    media.play()

def on_disconnect(client, userdata,rc=0):
    client.loop_stop()

video_thread = Thread(target=video_player)
video_thread.start()
loop_thread = Thread(target=time_loop)
loop_thread.start()
init = time.time()

def callback(client, userdata, message) :
    if ((message.payload.decode("utf-8")).__eq__("stop")) :
        client.disconnect()
    if ((message.payload.decode("utf-8")).__eq__("start")) :
        media.video_take_snapshot(0, "./temp.jpg", 0,0)
        Image.open("./temp.jpg").save("./temp.bmp")
    if ((message.payload.decode("utf-8")).__eq__("manual")) :
        media.video_take_snapshot(0, "./temp.jpg", 0,0)
        Image.open("./temp.jpg").save("./temp.bmp")
    client_send = mqtt.Client(client_id="videoCom", clean_session=True)
    client_send.connect('localhost', port=1883)
    client_send.publish('toIA', 'start')
    client_send.disconnect()

media.video_take_snapshot(0, "./temp.jpg", 0,0)
Image.open("./temp.jpg").save("./temp.bmp")
client_mqtt = mqtt.Client(client_id="videoClient", clean_session=True)
client_mqtt.on_message = callback
client_mqtt.connect('localhost', port=1883)
client_mqtt.subscribe('A-Eye/videoCom', 0)
client_mqtt.loop_forever()


