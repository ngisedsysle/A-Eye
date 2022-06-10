import os
from PIL import Image
import glob

size = (640,480)
path = 'train_v2/pas_bateau'

for i,file in enumerate(glob.iglob(os.path.join(path, "*.jpg"))):
    img = Image.open(r'{}'.format(file))
    img = img.resize(size)
    img.save('{}'.format(file))
