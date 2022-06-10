fIn  = open("./sauve/layer18_c.json", "r")
fOut = open("./sauve/layer18_format_c.json", "w")

idx = 0
fOut.write("[\n")
fOut.write("\t[\n")

for line in fIn:
    fOut.write("\t\t" + line)
    

fOut.write("\t],\n")
fOut.write("]\n")

fIn.close()
fOut.close()
