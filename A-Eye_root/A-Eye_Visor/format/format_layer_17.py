fIn  = open("./sauve/layer17_c.json", "r")
fOut = open("./sauve/layer17_format_c.json", "w")

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
        if(idx % (14*32) == 0):
            fOut.write("],\n")
            if(idx % (14*14*32) == 0):
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
