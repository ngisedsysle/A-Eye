from datetime import datetime
import arborescence
import os

def idxInDayDir(date = datetime.now(), mode = "A"):
    """
    Get the index in the folder, corresponding to the date.
    The folder doesn't need to exist.

    Args:
        date:   You can manually change the date.
        mode:   You can manually set the mode. 

    Return:
        String of 4 digits corresponding to the number of files present.
        Example:    0017
    """
    path = arborescence.getPath(date=date, mode=mode)
    idx = len(os.listdir(path=path))
    return '%04d' % idx

def nameTime(date = datetime.now()):
    """
    Get a string containing the date and time.

    Return: The string
        Example:    2022_05_25_14_50_34    
    """
    return date.strftime("%Y_%m_%d_%H_%M_%S")

def addBmpExtension(str):
    """
    Concatenate the string with ".bmp".

    Return: the string concatenate with .bmp extension.
        Example:    the_str.bmp
    """
    return str + ".bmp"

def addMode(str, mode = "A"):
    """
    Concatenate the mode with the string.

    Return: the mode concatenate with the string.
        Example:    A_the_str
    """
    return mode + "_" + str

def addIdx(str, date = datetime.now(), mode = "A"):
    """
    Concatenate the string with the index.

    Args:
        str:    The string to concatenate.
        date:   You can manually set the date.
        mode:   You can manually set the mode ("A" or "M").

    Return: the concatenate  string.
        Example:    the_str_0001
    """
    return str + "__" + idxInDayDir(date=date, mode=mode)

def getNameFile(date = datetime.now(), mode = "A"):
    """ 
    Get the final name of the file.
    
    Args:
        Date: You can manually set the date.
        Mode: You can manually set the mode ("A" or "M").

    Return: The concatenate string.
        Example: A_2022_05_25_14_50_32__0000.bmp
    """
    name = nameTime(date)
    name = addIdx(name, date, mode)
    name = addBmpExtension(name)
    name = addMode(name, mode)
    return name
