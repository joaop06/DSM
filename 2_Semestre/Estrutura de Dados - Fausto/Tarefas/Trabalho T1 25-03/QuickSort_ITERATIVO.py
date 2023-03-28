passadas = comparacoes = trocas = 0
def quick_sort_ITERATIVO(empresas, ini = 0, fim = None):
    if fim is None:
        fim = len(empresas) - 1

    tamanho = fim - ini + 1
    auxiliar = [None] * tamanho
    pos = -1

    global passadas, comparacoes, trocas
  
    pos += 1
    auxiliar[pos] = ini
    pos += 1
    auxiliar[pos] = fim
  
    while pos >= 0:
        passadas += 1
        fim = auxiliar[pos]
        pos = pos - 1
        ini = auxiliar[pos]
        pos = pos - 1
  
        i = ini - 1
        x = empresas[fim]

        for j in range(ini , fim):

            comparacoes += 1
            if empresas[j] <= x:
                i = i + 1
                empresas[i], empresas[j] = empresas[j], empresas[i]
                trocas += 1

        empresas[i + 1], empresas[fim] = empresas[fim], empresas[i + 1]
        pivot = i + 1

        if pivot - 1 > ini:
            pos = pos + 1
            auxiliar[pos] = ini
            pos = pos + 1
            auxiliar[pos] = pivot - 1

        if pivot + 1 < fim:
            pos = pos + 1
            auxiliar[pos] = pivot + 1
            pos = pos + 1
            auxiliar[pos] = fim

############################################################################################################

import sys
sys.dont_write_bytecode = True

import tracemalloc
tracemalloc.start()
from time import time

######################################################

'''100 mil Empresas'''

from dados.emp100mil import empresas
hora_ini = time()
quick_sort_ITERATIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n100 mil Empresas:\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')


######################################################

'''50 mil Empresas'''

'''from dados.emp50mil import empresas
hora_ini = time()
quick_sort_ITERATIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n50 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''



######################################################

'''25 mil Empresas'''

'''from dados.emp25mil import empresas
hora_ini = time()
quick_sort_ITERATIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n25 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''



######################################################

'''10 mil Empresas'''

'''from dados.emp10mil import empresas
hora_ini = time()
quick_sort_ITERATIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n10 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''
