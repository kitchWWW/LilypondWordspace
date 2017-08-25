
wb = ["wbh","wbh","wbh","r","wbh","wbh","wbh","r","wbh","r","r","wbh","r","r","wbh","r","r"]
hh = ["hh", "hh", "hh", "r", "hh", "hh", "hh", "r", "hh", "r", "r", "hh", "r", "r", "hh", "r", "r"]
sn = ["sn","sn","sn","r","sn","sn","sn","r","sn","r","r","sn","r","r","sn","r","r"]
for i in range(18):
	print sn
	#wb.insert(0,wb.pop(len(wb)-1))
	#wb.insert(0,wb.pop(len(wb)-1))
	sn.append(sn.pop(0))
	sn.append(sn.pop(0))
