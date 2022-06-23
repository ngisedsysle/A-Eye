import os
from cv2 import FlannBasedMatcher
import paho.mqtt.client as mqtt
from behave import *
import paramiko
import time
import paho.mqtt.subscribe as subscribe

tc = ""
msg_toClient = ""
msg_toIA = ""
msg_prediction = ""
valid = ""


def on_message(client, userdata, message):
    print("message received ", str(message.payload.decode("utf-8")))


def topic_toClient(client, userdata, message):
    msg_toClient = str(message.payload)
    print("message from topic toClient : ", msg_toClient[5:])
    if (msg_toClient[5:] == "Process IA running"):
        valid = "toClient"


def topic_toIA(client, userdata, message):
    print("message from topic toIA : ", str(message.payload.decode("utf-8")))
    msg_toIA = str(message.payload.decode("utf-8"))
    assert (msg_toIA == "start")


def topic_prediction(client, userdata, message):
    print("message from topic prediction",
          str(message.payload.decode("utf-8")))
    msg_prediction = message


client = mqtt.Client("behave_client")

hostname = "192.168.1.38"
client.connect(hostname)
# client.subscribe("A-Eye/toClient", qos=0)
# client.subscribe("toIA", qos=0)
# client.subscribe("prediction", qos=0)

# client.message_callback_add("A-Eye/toClient", topic_toClient)
# client.message_callback_add("toIA", topic_toIA)
# client.message_callback_add("prediction", topic_prediction)
ssh = paramiko.SSHClient()
ssh.connect(hostname='192.168.1.38', username='linux', password='zynqia35')
sftp = ssh.open_sftp()
sftp.put("/boat.bmp", "home/root/A-Eye_root/A-Eye_Visor/temp.bmp")
