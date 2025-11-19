
bits = [
	[5,2],
	[7,4],
	[11,2],
	[13,4],
	[3,16],
]

def genLenStartingWtih(starting,length,i):
	bitToUse = bits[i]
	bitOn = bitToUse[0]
	bitOff = bitToUse[1]
	sumBit = bitOn+bitOff
	toReturn = ""
	for index in range(length):
		indToUse = (index + starting) % sumBit
		if indToUse <=bitOff:
			toReturn+= " b "
		else:
			toReturn+= " r "
	print(toReturn)
	return toReturn


bitsToReturn = []
for i in range(len(bits)):
	bitsToReturn.append(genLenStartingWtih(100,90,i))

fd = open("template.ly")
fdo = open("out.ly",'w')

for l in fd.readlines():
	fdo.write(l)
	for z in range(len(bits)):
		if("%"+str(z+1) in l):
			fdo.write("\n\n"+bitsToReturn[z]+"\n\n")

fd.close()
fdo.close()

import os
os.system("lily out.ly")