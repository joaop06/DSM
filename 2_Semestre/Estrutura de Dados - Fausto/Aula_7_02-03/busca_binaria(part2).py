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
from data.lista_nomes import nomes
from time import time

nome = ['JOAO', 'LIVIA', 'MARCOS', 'BRENDA', 'ZELIA', 'ANA', 'PAULO', 'BÇJ--SJS', 'MARIA', '**10**']
for i in range(10):
    #nome = str(input('Nome para buscar: ')).upper()
    hora_ini = time()
    print(hora_ini)
    buscando = busca_binaria(nomes, nome[i])
    hora_fim = time()
    print(hora_fim)

    if buscando == -1:
        print(f'Nome não encontrado.\nTempo gasto: {(hora_fim - hora_ini) * 1000} // Comparações: {cont}')
    else:
        print(f'{nome[i]} está na posição {buscando}\nTempo gasto: {(hora_fim - hora_ini) * 1000} // Comparações: {cont}\n')