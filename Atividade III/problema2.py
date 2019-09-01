a = int(input())
b = int(input())
c = int(input())

media = (lambda x, y, z: "aprovado" if (x+y+z)/3 >= 6 else "reprovado")

print(media(a,b,c))