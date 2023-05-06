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
sys.path.insert(0, './')
from data.nomes_desord import nomes

print('Busca pelo nome JOAO')
resultado = busca_seq(nomes, 'JOAO')
print(f'Posição do nome "JOAO" na lista: {resultado}\n')
