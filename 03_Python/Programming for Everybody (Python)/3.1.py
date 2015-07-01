hrs = raw_input("Enter Hours:")
h = float(hrs)

rate = raw_input("Enter Rate:")
r = float(rate)

if h > 40 :
    pay = (1.5 * r * (h-40)) + (r * 40)
else :
    pay = r * h

print pay
    