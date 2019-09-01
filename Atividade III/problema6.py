a = float(input())
b = float(input())
c = float(input())

result = (lambda x, y, z: x if x > y and x > z else(y if y > z and y > x else z))

print(result(a, b, c))