passadas = comparacoes = trocas = 0
def quick_sort_RECURSIVO(empresas, ini=0, fim=None):

    if fim is None:
        fim = len(empresas)-1

    if fim <= ini:
        return

    global passadas, comparacoes, trocas

    pivot = fim
    div = ini -1
    passadas += 1

    for pos in range(ini, fim):
        comparacoes += 1
        if empresas[pos] < empresas[pivot]:
            div += 1

            comparacoes += 1
            if pos != div and empresas[pos] < empresas[div]:
                empresas[pos], empresas[div] = empresas[div], empresas[pos]
                trocas += 1
    
    div += 1

    comparacoes += 1
    if pivot != div and empresas[pivot] < empresas[div]:
        empresas[pivot], empresas[div] = empresas[div], empresas[pivot]
        trocas += 1


    quick_sort_RECURSIVO(empresas, ini, div-1)
    quick_sort_RECURSIVO(empresas, div+1, fim)

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
quick_sort_RECURSIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n100 mil Empresas:\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')


######################################################

'''50 mil Empresas'''

'''from dados.emp50mil import empresas
hora_ini = time()
quick_sort_RECURSIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n50 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''



######################################################

'''25 mil Empresas'''

'''from dados.emp25mil import empresas
hora_ini = time()
quick_sort_RECURSIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n25 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''



######################################################

'''10 mil Empresas'''

'''from dados.emp10mil import empresas
hora_ini = time()
quick_sort_RECURSIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n10 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''