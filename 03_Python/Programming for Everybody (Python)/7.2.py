# Use the file name mbox-short.txt as the file name
a = 0
c = 0
fname = raw_input("Enter file name: ")
fh = open(fname)
for line in fh:
	if not line.startswith("X-DSPAM-Confidence:") : continue
	a = a + float (line[line.find ('0'):])
	c = c + 1
a = a / c
print 'Average spam confidence:', a