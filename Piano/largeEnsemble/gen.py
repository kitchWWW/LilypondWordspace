import random

def convert(seconds): 
    seconds = seconds % (24 * 3600) 
    hour = seconds // 3600
    seconds %= 3600
    minutes = seconds // 60
    seconds %= 60
      
    return "%01d:%02d" % (minutes, seconds) 

offset = 240 - 12
chordWorth = 12
sustainLength = 6


chordCount = 1

HOW_MANY = 5


res = random.sample(range(chordWorth - sustainLength),HOW_MANY)
res = range(6)
random.shuffle(res)

print "CHORD #"+str(chordCount)
print "chord starts: "+ str(offset+(chordCount*chordWorth))
for i in res:
	print '^"'+convert(i+offset+(chordCount*chordWorth))+'"'