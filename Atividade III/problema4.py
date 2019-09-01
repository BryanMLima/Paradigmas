import math

a = float(input())
b = float(input())
c = float(input())

x1 = (lambda x, y, z: (-y + math.sqrt(y*y - 4*x*z))/(2*x))
x2 = (lambda x, y, z: (-y - math.sqrt(y*y - 4*x*z))/(2*x))

print(x1(a,b,c),x2(a,b,c))