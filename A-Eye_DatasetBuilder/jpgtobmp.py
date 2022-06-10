import glob
import os
from PIL import Image

path = 'train_100/pas_bateau'

for file in glob.iglob(os.path.join(path, "*.jpg")):
    img = Image.open(file)
    pre, ext = os.path.splitext(str(file))
    name = pre + '.bmp'
    img.save(name)
