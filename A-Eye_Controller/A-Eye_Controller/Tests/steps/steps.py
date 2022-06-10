import os
from cv2 import FlannBasedMatcher
import paho.mqtt.client as mqtt
from behave import *
import paramiko

tc = ""
msg_toClient = ""
msg_toIA = ""
msg_prediction = ""
client = mqtt.Client("behave_client")
broker_addr = "localhost"
client.connect(broker_addr)
client.subscribe("toClient", qos = 0)
client.subscribe("toIA", qos = 0)
client.subscribe("prediction", qos = 0)

def on_message(client, userdata, message):
    print("message received " ,str(message.payload.decode("utf-8")))
def topic_toClient(client, userdata, message):
    print("message from topic toClient : " ,str(message.payload.decode("utf-8")))
    msg_toClient = message
def topic_toIA(client, userdata, message):
    print("message from topic toIA : " ,str(message.payload.decode("utf-8")))
    msg_toIA = message
def topic_prediction(client, userdata, message):
    print("message from topic prediction",str(message.payload.decode("utf-8")))
    msg_prediction = message

client.message_callback_add("toClient", topic_toClient) 
client.message_callback_add("toIA", topic_toIA) 
##############################################################################
#                           TEST AUTO MODE
##############################################################################
@given(u'the ip is "{ip}"')
def step_impl(context, ip):
    # exec(f"./client.py -i {ip} -p 64000")
    print("TO DO : organiser l'arborescence des Tests")

@given(u'the mode is "mode auto"')
def step_impl(context):
    global tc
    tc = "10"

@when(u'I publish the {msg} on topic "{topic}"')
def step_impl(context, topic, msg):
    if (msg == "TC") :
        print("publishing TC on topic : ", topic)
        client.publish(topic, tc)
    elif (msg == "start") :
        print("publishing start on topic :", topic)
        client.publish(topic, msg)

@then(u'I must receive "{ack}" on topic "{topic}"')
def step_impl(context, ack, topic):
    global msg_toIA
    global msg_toClient
    if (topic == "toClient") :
        if (msg_toClient == ack) :
            print("Received message is {}, test successfull !".format(msg_toClient))
            assert True
        else :
            print("Received message is {}, test unsuccessfull !".format(msg_toClient))
            assert False
    elif (topic == "toIA") :
        if (msg_toIA == ack) :
            print("Received message is {}, test successfull !".format(msg_toIA))
            assert True
        else :
            print("Received message is {}, test unsuccessfull !".format(msg_toIA))
            assert False
    elif (topic == "prediction") :
        if (msg_prediction == ack) :
            print("Received message is {}, test successfull !".format(msg_prediction))
            assert True
        else :
            print("Received message is {}, test unsuccessfull !".format(msg_prediction))
            assert False

#################################################################################
#                           TEST AI PROCESSING WITH BOAT
#################################################################################
@given(u'The AI is waiting')
def step_impl(context):
    print("TO DO : pre-scenario for init AI")

@given(u'I have an image "{label}" boat')
def step_impl(context, label):
    ssh = paramiko.SSHClient()
    ssh.load_host_keys(os.path.expanduser(os.path.join("~", ".ssh", "known_hosts")))
    ssh.connect(hostname ='192.68.1.21', username = 'root', password = 'root')
    sftp = ssh.open_sftp()
    if (label == "with") :
        sftp.put("/boat.bmp", "home/root/A-Eye_root/A-Eye_Visor/temp.bmp")
    else :
        sftp.put("/no_boat.bmp", "home/root/A-Eye_root/A-Eye_Visor/temp.bmp")
    sftp.close()
    ssh.close

#################################################################################
#                           TEST MODES
#################################################################################
@given(u'the mode is "{mode}"')
def step_impl(context, mode):
    global tc
    if (mode == "auto") :
        tc = "10"
    elif (mode == "manual") :
        tc = "11"
    elif (mode == "video") :
        tc = "12"

# #################################################################################
# #                           TEST TAKE MANUAL PICTURE
# #################################################################################
# @given(u'the selected mode is "mode manual"')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: Given the selected mode is "mode manual"')


# @given(u'the TC means "take picture"')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: Given the TC means "take picture"')


# @then(u'I must receive a picture')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: Then I must receive a picture')


# @then(u'I must receive "Capture" on topic "toClient"')
# def step_impl(context):
#     raise NotImplementedError(u'STEP: Then I must receive "Capture" on topic "toClient"')