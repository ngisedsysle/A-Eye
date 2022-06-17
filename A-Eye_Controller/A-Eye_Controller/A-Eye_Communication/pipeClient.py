from asyncio.subprocess import PIPE, STDOUT
import sys
from time import sleep
import paho.mqtt.client as mqtt
from enum import Enum

## Supported protocol
class Protocol(Enum):
    STDOUT_e = 0
    PIPE_e = 1
    MQTT_e = 2

## Choose protocol to use
mode = Protocol.MQTT_e

def writeInPipe(msg):
    """
    Write the string in the pipe called CSServer, firstly opened by Controller.
    
    Args:
        msg: the string to write.
    """
    try:
        if mode == Protocol.STDOUT_e:
            print(msg)
        elif mode == Protocol.PIPE_e:
            f = open(r'\\.\pipe\\'+'CSServer', 'w')
            f.write(msg)
        elif mode == Protocol.MQTT_e:
            mqttc = mqtt.Client()
            mqttc.connect("localhost")
            mqttc.publish("toCS", msg)
        else:
            sys.exit("Unsupported Protocol in interprocess communication.\n")
    except:
        sleep(1)
        writeInPipe(msg)
    return
