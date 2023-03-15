print('''range(): Função que gera uma faixa de números. É muito usada em associação com listas
range() com 1 parâmetro: gera uma faixa que vai de 0 (zero) até o valor do parâmetro (-1):\n''')
for x in range(10):
    print(x)
print('-='*100)


print('''range() com 2 parâmetros: gera uma lista começando pelo primeiro parâmetro (inclusive) até o segundo argumento (exclusive NÃO ENTRA):\n''')
for y in range(5, 12): #Valor 5 entra (inclusive). Já o valor 12 não entra (exclusive)
    print(y)
print('Valor 5 entra (inclusive). Já o valor 12 não entra (exclusive)')
print('-='*100)


print('''range() com 3 parâmetros: 
1º: limite inferior (inclusive)
2º: limite superior (EXCLUSIVE)
3º: passo (de quanto em quanto a lista vai saltar; PODE SER NEGATIVO):\n''')
for z in range(0, 22, 3): # De 0 a 21 saltando de 3 em 3
    print(z)
print('De 0 a 21 saltando de 3 em 3')

print('\nrange() com passo negativo:')
for k in range(10, 0, -1): # Contagem regressiva de 10 até 1
    print(k)
print('-='*100)