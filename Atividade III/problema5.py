import math

a1 = float(input())
b1 = float(input())
c1 = float(input())

a2 = float(input())
b2 = float(input())
c2 = float(input())

result = (lambda x1,x2,y1,y2,z1,z2: math.sqrt(((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1)+(z2-z1)*(z2-z1))))

print(result(a1,a2,b1,b2,c1,c2))