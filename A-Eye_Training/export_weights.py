# -*- coding: utf-8 -*-
"""export_weights.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/187TdhwG0nFzDlJAy5hYfG0V5wSi5IlgK

This notebook provides code to export your weights to JSON format
"""

# This mounts your Google Drive to the Colab VM.
from google.colab import drive
drive.mount('/content/drive/', force_remount=True)

# Enter the foldername in your Drive where you have saved the unzipped
# assignment folder, e.g. 'cs231n/assignments/assignment1/'
FOLDERNAME = 'transfer_learning_mobilenet'
assert FOLDERNAME is not None, "[!] Enter the foldername."

# Now that we've mounted your Drive, this ensures that
# the Python interpreter of the Colab VM can load
# python files from within it.
import sys
sys.path.append('/content/drive/My Drive/{}'.format(FOLDERNAME))

"""Imports"""

import numpy as np
import cv2
import requests
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import sys
import tensorflow as tf
from time import time
import math
import json
import os
from tensorflow import keras

from tensorflow.keras.layers import Conv2D, DepthwiseConv2D, ReLU, BatchNormalization, add,Softmax, AveragePooling2D, Dense, Input, GlobalAveragePooling2D
from tensorflow.keras.models import Model
from mobilenetv2 import*

"""Build the model and save the arch to be written in JSON file"""

list_arch = []
rescale = tf.keras.layers.Rescaling(1./127.5, offset=-1)

inputs = tf.keras.Input(shape=(240, 240, 3))
network = rescale(inputs)
list_arch.append("57600")

network = tf.keras.layers.Conv2D(4, (3,3), padding='same', activation='relu')(network)
list_arch.append("C3:4:1")
network = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))(network)
list_arch.append("P2")

network = tf.keras.layers.Conv2D(8, (3,3), padding='same', activation='relu')(network)
list_arch.append("C3:8:1")
network = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))(network)
list_arch.append("P2")

network = tf.keras.layers.Conv2D(32, (3,3), padding='same', activation='relu')(network)
list_arch.append("C3:32:1")
network = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))(network)
list_arch.append("P2")

network = tf.keras.layers.Conv2D(32, (3,3), padding='same', activation='relu')(network)
list_arch.append("C3:32:1")
network = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))(network)
list_arch.append("P2")

network = tf.keras.layers.Flatten()(network)
network = tf.keras.layers.Dense(32, activation='relu')(network)
list_arch.append("32")
outputs = tf.keras.layers.Dense(2, activation='softmax')(network)
list_arch.append("2")
model = tf.keras.Model(inputs, outputs)

model.summary()
print(list_arch)
print(len(list_arch))

"""Load checkpoint corresponding to the model which you want to save"""

checkpoint_path = "drive/MyDrive/test_archi_IA/checkpoints_airbus_wo_rscl/weights_low_krn.04-0.8714.cpkt"
checkpoint_dir = os.path.dirname(checkpoint_path)
model.load_weights(checkpoint_path)

"""Writes weights to JSON format """

import json
weights=model.get_weights()#return a numpy list of weights
for i in range(0,len(weights)):
  print(weights[i].shape)
class NumpyEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, np.ndarray):
            return obj.tolist()
        return json.JSONEncoder.default(self, obj)
json_dump = ""
json_1 = json.dumps({"size" : len(list_arch)})
json_2 = json.dumps({"arch" : list_arch})
for i in range(0,len(weights)) :
  json_temp = json.dumps({"layer{}".format(i) : weights[i]}, cls=NumpyEncoder)
  json_dump = json_dump+json_temp
json_3 = json.dumps({"weights" : json_dump})
json_dump = json_1 + json_2 + json_3

with open('./drive/MyDrive/test_archi_IA/weights_airbus_4krn.json', 'w', encoding='utf-8') as f:
    json.dump(json_dump, f, ensure_ascii=False, indent=4)
print("saved in file")