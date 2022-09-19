#  ----------------------- IMPORTS ----------------------------------

import numpy as np
import cv2
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
import sys
import os
import logging

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'

import tensorflow as tf

# tf.get_logger().setLevel(logging.ERROR)
# tf.autograph.set_verbosity(1)

from time import time
import math
from tensorflow import keras
import pathlib
from IPython.display import clear_output
from tensorflow.keras.layers import Conv2D, DepthwiseConv2D, ReLU, BatchNormalization, add,Softmax, AveragePooling2D, Dense, Input, GlobalAveragePooling2D,Add
from tensorflow.keras.models import Model
from tensorflow.keras.optimizers.schedules import ExponentialDecay


from tensorflow import keras
from tensorflow.keras.preprocessing import image_dataset_from_directory

#  ------------------------------------------------------------------------------
#  ----------------------- CREATION OF DATASET ----------------------------------
#  ------------------------------------------------------------------------------

list_train = os.listdir('/home/linux/Documents/thomasWorkspace/bw/dataset_airbus_black_and_white') #airbus

data_dir_train = pathlib.Path('/home/linux/Documents/thomasWorkspace/bw/dataset_airbus_black_and_white') # airbus bw
print(os.path.abspath(data_dir_train))

n_classes = 2
image_height = 240
image_width = 240
n_channel = 1
batch_size = 500

train_dataset = image_dataset_from_directory(
    directory=data_dir_train,
    subset = 'training',
    shuffle = True,
    validation_split = 0.2,
    seed=42,
    batch_size=batch_size,
    image_size=(image_height,image_width))

class_names_train = list_train
print(class_names_train)


validation_dataset = image_dataset_from_directory(
    directory=data_dir_train,
    subset = 'validation',
    shuffle = True,
    validation_split = 0.2,
    seed=42,
    batch_size=batch_size,
    image_size=(image_height,image_width))

class_names = validation_dataset.class_names
print(class_names)

AUTOTUNE = tf.data.AUTOTUNE

train_dataset = train_dataset.prefetch(buffer_size=AUTOTUNE)
validation_dataset = validation_dataset.prefetch(buffer_size=AUTOTUNE)
# test_dataset = test_dataset.prefetch(buffer_size=AUTOTUNE)

data_augmentation = tf.keras.Sequential([

  tf.keras.layers.RandomFlip('horizontal'),
  tf.keras.layers.RandomRotation(0.2),
])

grayscale =   tf.image.rgb_to_grayscale
rescale = tf.keras.layers.Rescaling(1./127.5, offset=-1)


#  ------------------------------------------------------------------------------
#  ----------------------- CREATION OF MODEL ------------------------------------
#  ------------------------------------------------------------------------------

inputs = tf.keras.Input(shape=(240, 240, 3))
network = data_augmentation(inputs)
network = grayscale(network)
network = rescale(network)

network = tf.keras.layers.Conv2D(8, (3,3), padding='same', activation='relu')(network)
network = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))(network)

network = tf.keras.layers.Conv2D(16, (3,3), padding='same', activation='relu')(network) 
network = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))(network)

network = tf.keras.layers.Conv2D(32, (3,3), padding='same', activation='relu')(network)
network = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))(network)

network = tf.keras.layers.Conv2D(32, (3,3), padding='same', activation='relu')(network)
network = tf.keras.layers.MaxPooling2D(pool_size=(2, 2))(network)

network = tf.keras.layers.Flatten()(network)
network = tf.keras.layers.Dense(32, activation='relu')(network)
outputs = tf.keras.layers.Dense(2, activation = 'softmax')(network)
model = tf.keras.Model(inputs, outputs)

model.summary()



# checkpoint_path = "drive/MyDrive/test_archi_IA/checkpoints_bw"
# checkpoint_dir = os.path.dirname(checkpoint_path)
# model.load_weights(checkpoint_path)


#  ------------------------------------------------------------------------------
#  ----------------------- CREATION OF CALLBACKS --------------------------------
#  ------------------------------------------------------------------------------

class PlotLearning(keras.callbacks.Callback):
    """
    Callback to plot the learning curves of the model during training.
    """
    def on_train_begin(self, logs={}):
        self.metrics = {}
        for metric in logs:
            self.metrics[metric] = []
            
    def on_epoch_end(self, epoch, logs={}) :
        tf.keras.callbacks.ModelCheckpoint(filepath="../bw/checkpoints/weights.{epoch:02d}-{val_accuracy:.4f}.cpkt",
                                                 save_weights_only=True,
                                                 monitor='val_accuracy',
                                                 save_best_only=True,
                                                 mode='max',
                                                 initial_value_threshold = 0.5,
                                                 verbose=1)
        # Storing metrics
        for metric in logs:
            if metric in self.metrics:
                self.metrics[metric].append(logs.get(metric))
            else:
                self.metrics[metric] = [logs.get(metric)]
        
        # Plotting
        metrics = [x for x in logs if 'val' not in x]
        
        f, axs = plt.subplots(1, len(metrics), figsize=(15,5))
        clear_output(wait=True)

        for i, metric in enumerate(metrics):
            axs[i].plot(range(1, epoch + 2), 
                        self.metrics[metric], 
                        label=metric)
            # if logs['val_' + metric]:
            #     axs[i].plot(range(1, batch + 2), 
            #                 self.metrics['val_' + metric], 
            #                 label='val_' + metric)
                
            axs[i].legend()
            axs[i].grid()
        
        axs[0].set_ylabel('Loss')
        axs[0].set_xlabel('Epochs')
        axs[1].set_ylabel('Accuracy')
        axs[1].set_xlabel('Epochs')

        plt.tight_layout()
        plt.show()

callbacks_list = [PlotLearning()]
cp_callback = tf.keras.callbacks.ModelCheckpoint(filepath="../bw/checkpoints/weights.{epoch:02d}-{val_accuracy:.4f}.cpkt",
                                                 save_weights_only=True,
                                                 monitor='val_accuracy',
                                                 save_best_only=True,
                                                 mode='max',
                                                 initial_value_threshold = 0.5,
                                                 verbose=1)



#  ------------------------------------------------------------------------------
#  ----------------------- TRAINING ---------------------------------------------
#  ------------------------------------------------------------------------------

initial_epochs = 5
base_learning_rate = 0.001

model.compile(optimizer=tf.keras.optimizers.Adam(learning_rate=base_learning_rate),
              loss=tf.keras.losses.SparseCategoricalCrossentropy (from_logits=False),
              metrics=['accuracy'])
history = model.fit(train_dataset,
                    epochs=initial_epochs,
                    validation_data=validation_dataset,
                    callbacks=cp_callback
                    )

plt.plot(history.history['accuracy'])
plt.plot(history.history['val_accuracy'])
plt.title('model accuracy')
plt.ylabel('accuracy')
plt.xlabel('epochs')
plt.legend(['train', 'val'], loc='upper left')
plt.show()

plt.plot(history.history['loss'])
plt.plot(history.history['val_loss'])
plt.title('model loss')
plt.ylabel('loss')
plt.xlabel('epochs')
plt.legend(['train', 'val'], loc='upper left')
plt.show()

history = model.fit(train_dataset,
                    epochs=initial_epochs,
                    validation_data=validation_dataset,
                    callbacks=cp_callback
                    )

plt.plot(history.history['accuracy'])
plt.plot(history.history['val_accuracy'])
plt.title('model accuracy')
plt.ylabel('accuracy')
plt.xlabel('epochs')
plt.legend(['train', 'val'], loc='upper left')
plt.show()

plt.plot(history.history['loss'])
plt.plot(history.history['val_loss'])
plt.title('model loss')
plt.ylabel('loss')
plt.xlabel('epochs')
plt.legend(['train', 'val'], loc='upper left')
plt.show()