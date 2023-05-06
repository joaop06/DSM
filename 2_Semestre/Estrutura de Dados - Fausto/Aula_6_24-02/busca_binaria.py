print('''
ALGORITMO DE BUSCA BINÁRIA

Dados uma lista, que deve estar PREVIAMENTE ORDENADA, e um valor de busca, devide a lista em duas metades procurando pelo valor de busca apenas na metade onde o valor poderia estar. Novas subdivisões são feitas até que se encontre o valor de busca ou que reste apenas uma sublista vazia, quando então se conclui que o valor de busca não existe na lista.
''')

cont = 0        # Conta o número de comparações
def busca_binaria(lista, val):
    global cont
    cont = 0

    ini = 0                 # Início da lista
    fim = len(lista) - 1    # Fim da lista

    while ini <= fim:
        meio = (ini + fim)//2   # Divisão inteira

        # Valor de busca foi encontrado, retorna a posição.
        if lista[meio] == val:
            cont += 1
            return meio
        elif val < lista[meio]:
            cont += 2
            fim = meio - 1
        else: # val > lista[meio]
            cont += 2
            ini = meio + 1
    return -1


import sys
sys.path.insert(0, './')
from data.nomes_desord import nomes
from time import time

nome = str(input('Nome para buscar: ')).upper()
hora_ini = time()
buscando = busca_binaria(nomes, nome)
hora_fim = time()

if buscando == -1:
    print(f'Nome não encontrado.\nTempo gasto: {(hora_fim - hora_ini) * 1000}')
else:
    print(f'O nome buscado está na posição {buscando}\nTempo gasto: {(hora_fim - hora_ini) * 1000}\n')