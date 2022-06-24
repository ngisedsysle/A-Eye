#!/bin/python3
import glob
import os
from PIL import Image

path = '.'

for file in glob.iglob(os.path.join(path, "temp.jpeg")):
    img = Image.open(file)
    pre, ext = os.path.splitext(str(file))
    name = pre + '.bmp'
    img.save(name)
