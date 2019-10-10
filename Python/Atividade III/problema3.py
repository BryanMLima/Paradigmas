n = int(input())

fibo = (lambda x: 0 if x == 0 else (1 if x == 1 else fibo(x-1) + fibo(x-2)))

result = fibo(n)

print(result)