from datetime import datetime
import shutil
import arborescence
import naming


def placeImage(img, date=datetime.now(), mode="A"):
    """
    Place the image in the corresponding folder (date, time, type).
    
    Args:
        img: path to the image.
        date: You can manually set the date.
        mode: You can manually set the mode "A" or "M".
    """
    shutil.copyfile(img, arborescence.getPath(date=date, mode=mode) +
                    "/" + naming.getNameFile(mode=mode, date=date))
