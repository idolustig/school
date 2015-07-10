largest = None
smallest = None

while True:
	num = raw_input("Enter a number: ")
	if num == "done": break
	try:
		if int(num) > largest: 
			largest = int(num)
		if smallest is None or int(num) < smallest:
			smallest = int(num)
	except:
		print "Invalid input"

print "Maximum is", largest
print "Minimum is", smallest