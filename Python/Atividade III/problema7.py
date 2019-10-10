def func(x):
    if x % 2 == 0:
        return "par"
    else:
        return "impar"
print(list(map(lambda x: func(x), [132, 21245, 33456, 6434, 2345, 5436])))