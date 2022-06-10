fIn = open("./sauve/layer11_c.json", "r")
fOut = open("./sauve/layer11_format_c.json", "w")

idx = 0
fOut.write("[\n")
fOut.write("[\n")
fOut.write("[\n")
fOut.write("[\n")

for line in fIn:
    fOut.write(line)
    idx += 1
    if(idx % 32 == 0):
        fOut.write("],\n")
        if(idx % (112*32) == 0):
            fOut.write("],\n")
            if(idx % (112*112*32) == 0):
                fOut.write("],\n")
                fOut.write("[\n")
            fOut.write("[\n")
        fOut.write("[\n")

fOut.write("],\n")
fOut.write("],\n")
fOut.write("],\n")
fOut.write("]\n")


fIn.close()
fOut.close()
