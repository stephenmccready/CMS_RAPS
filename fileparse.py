import glob
filelist=glob.glob("input*.txt") # Change input*.txt to a wildcard pattern that matches your files
outputfilecount = 1
for file in filelist:
	i = open(file)	
	for x in i:
		if x[:3] == 'AAA':
			o = open("output" + str(outputfilecount) + ".txt", "w") # Change output and .txt to whatever you want your output files to be called
			outputfilecount += 1
		o.write(x)

filelist=glob.glob("output*.txt")
print(filelist)
