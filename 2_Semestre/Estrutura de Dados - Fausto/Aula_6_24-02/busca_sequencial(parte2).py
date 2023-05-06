# Lista de Números
nums = [9, 21, 33, 12, 0, 18, 24, 30, 15, 6, 3, 27]

print('''
Função que realiza uma busca sequencial em uma lista procurando por val.
Se val for encontrado, retorna a posição de val.
Caso contrário, retorna valor -1
''')

def busca_seq(lista, val):
    for pos in range(len(lista)):
        # Encontra val; retorna a posição onde foi encontrado
        if val == lista[pos]:
            return pos
        # Percorre toda a lista e não encontrou val: retorna -1
    return -1

########################################################################

'''TESTE'''

print('Procurando o valor 15')
resultado = busca_seq(nums, 15)
print(f'Posição do valor 15 na lista: {resultado}\n')

print('Procurando o valor 20')
resultado = busca_seq(nums, 20)
print(f'Posição do valor 20 na lista: {resultado}\n')

print('Procurando o valor 33')
resultado = busca_seq(nums, 33)
print(f'Posição do valor 33 na lista: {resultado}\n')

########################################################################

'''TESTE COM NOMES'''

import sys
sys.dont_write_bytecode = True      # Impeede a criação do cache
from time import time
sys.path.insert(0, './')
from data.nomes_desord import nomes


def teste_busca_nome(nome):
    hora_ini = time()
    resultado = busca_seq(nomes, nome)
    hora_fim = time()
    return f'Busca pelo nome {nome}\nPosição do nome {nome} na lista: {resultado}\n\nTempo gasto: {(hora_fim - hora_ini) * 1000} ms\n'


nome = teste_busca_nome('JOAO')
print('-'*50)
print(nome)

nome = teste_busca_nome('ANA')
print('-'*50)
print(nome)

nome = teste_busca_nome('TARCILA')
print('-'*50)
print(nome)

nome = teste_busca_nome('FASDJHFS')
print('-'*50)
print(nome)

