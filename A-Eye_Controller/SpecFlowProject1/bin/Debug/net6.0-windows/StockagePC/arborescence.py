from datetime import date, datetime
import os

def create_arborescence(newpath):
    """
    Create the necessary directories if they don't exist.

    Args:
        newpath: path to build
    """
    if not os.path.exists(newpath):
        os.makedirs(newpath)

def getPath(date = date.today(), mode = "A"):
    """
    Return the path depending on the date.

    Args:
        date:   You can pass a different date
        mode:   You can manually set the mode ("A" or "M" are supported, auto otherwise)
    """
    newpath = "./images/" +  date.strftime("%Y") + "/" + date.strftime("%m") + "/" + date.strftime("%d")
    if (mode == "M"):
        newpath = newpath + "/Manual"
    else :
        newpath = newpath + "/Auto"
    create_arborescence(newpath)
    return newpath

