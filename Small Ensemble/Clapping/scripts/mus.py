
wb = ["wbh","wbh","wbh","r","wbh","wbh","wbh","r","wbh","r","r","wbh","r","r","wbh","r","r"]
hh = ["hh", "hh", "hh", "r", "hh", "hh", "hh", "r", "hh", "r", "r", "hh", "r", "r", "hh", "r", "r"]
sn = ["sn","sn","sn","r","sn","sn","sn","r","sn","r","r","sn","r","r","sn","r","r"]
for i in range(18):
	for z in range(len(wb)):
		print "<"+wb[z]+" "+hh[z]+" "+sn[z]+">",
	print ""
	hh.append(hh.pop(0))
	sn.insert(0,sn.pop(len(sn)-1))
