name = raw_input("Enter file:")
if len(name) < 1 : name = "mbox-short.txt"

try:
	handle = open(name)
except:
	print 'File cannot be opened:', name
	exit()

counts = dict()
for line in handle :
    if line.startswith('From:') :
		words = line.split()
		counts[words[1]] = counts.get(words[1],0) + 1

max_k="no emails found"
max_v=0
for x in counts :
	if counts[x] > max_v :
		max_v=counts[x]
		max_k=x

print max_k, max_v