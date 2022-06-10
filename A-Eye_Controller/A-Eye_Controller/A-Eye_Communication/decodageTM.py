import pipeClient

def decodeTM(bArr):
    """
    Get the socket content and decode the datas.
    The first byte is the OP code.
    The next 4 ones are the size.
    And then is the data.
    
    Args:
        bArr : byteArray, array which contains the bytes received.
        
    Output product:
        write a string (ex : in the pipe to the Controller)
        write the image in a file
    """
    code = bArr[0]
    size = bArr[1:5]
    bArr = bArr[5:]
    if code == 0x60:
        # String to print
        pipeClient.writeInPipe("content of TM : "+ bArr.decode())
    elif code == 0x50:
        # Image
        file = open("temp.bmp", "wb")
        file.write(bArr)
        file.close()
        pipeClient.writeInPipe("Get New Image in Auto Mode")
    elif code == 0x70:
        file = open("temp.bmp", "wb")
        file.write(bArr)
        file.close()
        pipeClient.writeInPipe("Get New Image in Manual Mode")

    else:
        # Other
        pipeClient.writeInPipe("OpCode not implemented in decodageTM")
    return
