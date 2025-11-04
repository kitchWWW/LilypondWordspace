import os
import math


allScales = [
	["d","e","fis","g","a","b"],
	["c","d","e","fis","g","b"],
	["c","d","e","f","g","a"],
	["cis","d","e","fis","g","b"],
]


def toPrint(arr):
	res = ""
	for i in range(len(arr)):
		scale = allScales[math.floor(i/4)%len(allScales)]

		note = round(arr[i])
		pitch = scale[note%len(scale)]
		octave = note / len(scale)
		octBit = ""
		print("-------")
		print(note)
		print(pitch)
		print(octave)
		if(octave > 0):
			octBit = "'"*math.floor(octave)
		if(octave < 0):
			octBit = ","*math.ceil((octave * -1))

		noteString = pitch+octBit
		# res += " "+noteString+"8 "+noteString+"4 " +noteString+"8 "
		res += noteString+"4"
	return "\n"+res+"\n"

print(toPrint([-5,-4,-3,-2,-1,0,1,2,3,4,5,6,7,8,9,10]))

def interpolateBetween(startingChord, endingChord, lengthOfSpan):
	allParts = [[],[],[],[]]
	for i in range(lengthOfSpan):
		for p in range(len(allParts)):
			print(p)
			difference  = endingChord[p] - startingChord[p]
			allParts[p].append(startingChord[p] + (difference * i / lengthOfSpan ))
	return allParts

def combineParts(p1, p2):
    parts = [[],[],[],[]]
    for i in range(4):
        parts[i] = p1[i] + p2[i]
    return parts

parts = [[],[],[],[]]

# partsNew = interpolateBetween([6, 6, 6, 6],[0,-3,6,12],10)
# parts = combineParts(parts, partsNew)


partsNew = interpolateBetween([6, 6, 6, 6],[0,2,10,12],8)
parts = combineParts(parts, partsNew)
partsNew = interpolateBetween([10,12,13,15],[5,8,10,13],6)
parts = combineParts(parts, partsNew)
partsNew = interpolateBetween([6,7,8,9],[5,8,10,12],3)
parts = combineParts(parts, partsNew)
partsNew = interpolateBetween([-5,0,4,20],[4,6,8,10],10)
parts = combineParts(parts, partsNew)

print(parts)



fd = open("template.ly","r")
fdo = open("out.ly","w")

for l in fd.readlines():
	fdo.write(l)
	if("%part1" in l):
		res = toPrint(parts[3])
		fdo.write(res)

	if("%part2" in l):
		res = toPrint(parts[2])
		fdo.write(res)


	if("%part3" in l):
		res = toPrint(parts[1])
		fdo.write(res)


	if("%part4" in l):
		res = toPrint(parts[0])
		fdo.write(res)

fdo.close()
os.system("lily out.ly")