## If set to True, no pipe used --> STDOUT
from time import sleep


DEBUG = False

def writeInPipe(msg):
    """
    Write the string in the pipe called CSServer, firstly opened by Controller.
    
    Args:
        msg: the string to write.
    """
    if DEBUG:
        print(msg)
    else:
        try:
            f = open(r'\\.\pipe\\'+'CSServer', 'w')
            f.write(msg + "\n")
        except:
            sleep(1)
            writeInPipe(msg)
    return
