prompt="Please enter a number between 0.0 and 1.0 	"
num = raw_input(prompt)

try:
	n=float(num)
except:
    print 'This is not a valid number'

if n < 0 or n > 1:
    print (prompt)
elif n >= 0.9:
    print 'A'
elif n >= 0.8:
    print 'B'
elif n >= 0.7:
    print 'C'
elif n >= 0.6:
    print 'D'
else:
    print 'F'
