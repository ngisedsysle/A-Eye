fIn = open("./sauve/image_preprocessed_c.json", "r")
fOut = open("./sauve/image_preprocessed_format_c.json", "w")

idx = 0
fOut.write("[\n")
fOut.write("[\n")
fOut.write("[\n")
fOut.write("[\n")

for line in fIn:
    idx += 1
    fOut.write(line)
    if(idx % 3 == 0):
        fOut.write("],\n")
        if(idx % (224*3) == 0):
            fOut.write("],\n")
            if(idx % (224*224*3) == 0):
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
