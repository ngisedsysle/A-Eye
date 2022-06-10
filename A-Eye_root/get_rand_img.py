import os
import random
import shutil

path = '../../airbus_train_bmp/'

nbr_image_w_ship = len([name for name in os.listdir(path + 'bateau/')])
nbr_image_wo_ship = len([name for name in os.listdir(path + 'pas_bateau/')])
nbr_image = nbr_image_w_ship + nbr_image_wo_ship
rand = random.random()
rand = rand * nbr_image
rand = rand.__int__()
bateau = False

# Choose folder
if rand >= nbr_image_w_ship:
    bateau = True
    rand = rand - nbr_image_w_ship

# Build Path
if bateau: 
    path = path + 'bateau/'
else :
    path = path + 'pas_bateau/'

# Get Image
files = os.listdir(path)
file = files[rand]
file = path + file
print(file)
shutil.copy(file, '../../temp.bmp')
