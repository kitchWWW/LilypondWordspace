import random

def convert(seconds): 
    seconds = seconds % (24 * 3600) 
    hour = seconds // 3600
    seconds %= 3600
    minutes = seconds // 60
    seconds %= 60
      
    return "%01d:%02d" % (minutes, seconds) 

offset = 420 -20
chordWorth = 20
sustainLength = 6


chordCount = 2
HOW_MANY = 7


res = random.sample(range(chordWorth - sustainLength),HOW_MANY)
# res = range(7)
# res = [i * 2 for i in res]
# random.shuffle(res)

print "CHORD #"+str(chordCount)
print "chord starts: "+ str(offset+(chordCount*chordWorth))
for i in res:
	print '^"'+convert(i+offset+(chordCount*chordWorth))+'"'