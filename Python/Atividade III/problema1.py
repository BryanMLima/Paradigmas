a = int(input(), 2)

b = int(input(), 2)

result = lambda x, y: x ^ y
print(bin(result(a, b)))