# Lista
frutas = ['laranja', 'maçâ', 'uva', 'pera', 'mamão', 'abacate', 'amora']

'''1)'''

print(''' 1) Para percorrer uma lista e exibir apenas seus elementos usamos for...in, como já vimos no range (Aula_4)''')

for f in frutas:
    print(f)
print('-='*100)

'''2)'''

print(''' 2) Se quisermos percorrer a lista em ordem inversa para exibir apenas seus elementos, podemos usar for...in combinado com reversed()''')
for f in reversed(frutas):
    print(f)
print('-='*100)

'''3)'''

print(''' 3) Agora, se precisarmos exibir, além do elemento, também sua POSIÇÃO, devemos usar range()''')
for pos in range(len(frutas)):
    print(f'A fruta {frutas[pos]} está na posição {pos}.')
print('-='*100)

'''4)'''

print(''' 4) Percurso em ordem inversa usando range() com 3 parâmetros.''')
for i in range(len(frutas)-1, -1, -1):
    print(f'A fruta {frutas[i]} está na posição {i}.')
print('-='*100)
