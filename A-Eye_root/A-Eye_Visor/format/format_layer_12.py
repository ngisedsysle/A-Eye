fIn = open("./sauve/layer12_c.json", "r")
fOut = open("./sauve/layer12_format_c.json", "w")

idx = 0
fOut.write("[\n")
fOut.write("[\n")
fOut.write("[\n")
fOut.write("[\n")

for line in fIn:
    idx += 1
    fOut.write(line)
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
