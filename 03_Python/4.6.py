def computepay(h,r):
    if h > 40 :
    	pay = ((1.5 * r) * (h - 40)) + (40 * r)
    else :
    	pay = 40 * r
    return pay

hrs = raw_input("Enter Hours: ")
rate = raw_input("Enter Rate: ")

h = float(hrs)
r = float (rate)

p = computepay(h,r)

print p