fIn = open("./sauve/layer10_c.json", "r")
fOut = open("./sauve/layer10_format_c.json", "w")

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
        if(idx % (224*32) == 0):
            fOut.write("],\n")
            if(idx % (224*224*32) == 0):
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
