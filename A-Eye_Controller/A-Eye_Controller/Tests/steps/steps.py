import os
from cv2 import FlannBasedMatcher
import paho.mqtt.client as mqtt
from behave import *
import paramiko
import time
import paho.mqtt.subscribe as subscribe

tc = ""
hostname = ""

client = mqtt.Client("behave_client")
##############################################################################
#                           TEST MODES
##############################################################################
@given(u'the ip is "{ip}"')
def step_impl(context, ip):
    global hostname
    hostname = f"{ip}"
    client.connect(hostname)

@given(u'the mode is "{mode}"')
def step_impl(context, mode):
    global tc
    if (mode == "auto") :
        tc = "10"
    elif (mode == "manual") :
        tc = "11"
    elif (mode == "video") :
        tc = "12"

@when(u'I publish "{msg}" on topic "{topic}"')
def step_impl(context, topic, msg):
    global hostname
    if (msg == "TC") :
        client.publish(topic, tc)
    elif (msg == "start") :
        client.publish(topic, msg)

@then(u'I must receive "{ack}" on topic "{topic}"')
def step_impl(context, ack, topic):
    global hostname
    global tc
    global image
    if (topic == "A-Eye/toClient") :
        if (ack == "Process IA running") :
            mode_auto = subscribe.simple(topic, hostname = hostname)
            # client.publish("debug", str(mode_auto.payload)[19:37])
            # client.publish("debug", ack)
            print(str(mode_auto.payload))
            assert(str(mode_auto.payload)[19:37] == ack)
        if (ack == "Mode capture manuelle") :
            # client.publish("debug", "je subscribe")
            mode_manual = subscribe.simple(topic, hostname = hostname)
            # client.publish("debug", str(mode_manual.payload)[19:40])
            # client.publish("debug", ack)
            print(str(mode_manual.payload))
            assert(str(mode_manual.payload)[19:40] == ack)
        if (ack == "Mode video") :
            # client.publish("debug", "je subscribe")
            mode_video = subscribe.simple(topic, hostname = hostname)
            # client.publish("debug", str(mode_video.payload)[17:27])
            # client.publish("debug", ack)
            print(str(mode_video.payload)[17:27])
            assert(str(mode_video.payload)[17:27] == ack)
        if (ack == "Capture") :
            # client.publish("debug", "je subscribe")
            capture = subscribe.simple(topic, hostname = hostname)
            # client.publish("debug", str(capture.payload)[17:27])
            # client.publish("debug", ack)
            print(str(capture.payload)[19:26])
            assert(str(capture.payload)[19:26] == ack)
    elif (topic == "toIA") :
        toIA = subscribe.simple("toIA", hostname=hostname)
        client.publish("toIA", "stop")
        client.publish("A-Eye/toServer", "11")
        time.sleep(5)
        assert(str(toIA.payload)[2:7] == ack)

#################################################################################
#                           TEST AI PROCESSING WITH BOAT
#################################################################################
@given(u'The AI is waiting')
def step_impl(context):
    time.sleep(5)

@given(u'I have an image "{label}" boat')
def step_impl(context, label):
    global hostname
    ssh = paramiko.SSHClient()
    ssh.load_system_host_keys()
    ssh.connect(hostname = hostname, username = 'ubuntu', password = 'zynqia35')
    sftp = ssh.open_sftp()
    if (label == "with") :
        path_boat = os.getcwd()+"\\boat.bmp"
        # print(path_boat)
        sftp.put(path_boat, "/home/linux/A-Eye/A-Eye_root/temp.bmp")
    else :
        path_no_boat = os.getcwd()+"\\no_boat.bmp"
        # print(path_no_boat)
        sftp.put(path_no_boat, "/home/linux/A-Eye/A-Eye_root/temp.bmp")
    sftp.close()
    ssh.close

#################################################################################
#                           TAKE PICTURE
#################################################################################

@given(u'the TC means "take picture"')
def step_impl(context):
    global tc
    global hostname
    client.publish("A-Eye/toServer", tc)
    tc = "21"

@then(u'I must receive the picture')
def step_impl(context):
    assert(True)
