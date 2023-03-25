comps = trocas = passadas = 0
def bubble_sort(lista):
    global comps, trocas, passadas
    comps = trocas = passadas = 0

    desloc = 1

    # Loop etarno, não sabemos quantas passadas serão necessárias
    while True:
        trocou = False
        passadas += 1
        

        '''Percurso da lista, do primeiro ao PENÚLTIMO elemento, com acesso a cada posição.'''
        for i in range(len(lista)-desloc):
            comps += 1

            '''Se o número que está à frente na lista for MENOR do que o que está atrás, TROCA.'''
            if lista[i+1] < lista[i]:
                lista[i+1], lista[i] = lista[i], lista[i+1]
                trocou = True
                trocas += 1
        
        if not trocou:  # Não houve troca na passada
            break       # Interrompe o loop eterno; acabou
        desloc+=1



print('''Testando o Bubble Sort (Ordenação de Bolha)

VERSÃO OTIMIZADA COM ENCOLHIMENTO DO PERCURSO A CADA PASSADA\n\n''')

nums = [6, 4, 2, 0, 9, 5, 1, 8, 3, 7]
bubble_sort(nums)
print(f'**CASO QUALQUER**\nLista Ordenada: {nums}\nComparações: {comps}, Trocas: {trocas}, Passadas: {passadas}.')


pior_caso = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
bubble_sort(pior_caso)
print(f'\n\n**PIOR CASO**\nLista Ordenada: {pior_caso}\nComparações: {comps}, Trocas: {trocas}, Passadas: {passadas}.')


melhor_caso = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
bubble_sort(melhor_caso)
print(f'\n\n**MELHOR CASO**\nLista Ordenada: {melhor_caso}\nComparações: {comps}, Trocas: {trocas}, Passadas: {passadas}.')

###########################################################

from time import time
import sys
sys.dont_write_bytecode = True      # Impede a criação do cache

sys.path.append('./Material/Aulas_Algoritmos_Ordenacao/data')
from nomes_desord import nomes


nomes = nomes[:25000]
hora_ini = time()
bubble_sort(nomes)
hora_fim = time()

print(f'\n\n\nLista Nomes Ordenada: {nomes}\n\nTempo Gasto: {hora_fim - hora_ini}  //  Comparações: {comps}, Trocas: {trocas}, Passadas: {passadas}.')