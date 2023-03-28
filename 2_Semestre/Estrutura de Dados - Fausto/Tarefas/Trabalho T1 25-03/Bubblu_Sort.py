passadas = comparacoes = trocas = 0
def bubble_sort(empresas):
    global passadas, comparacoes, trocas
    passadas = comparacoes =  trocas = 0

    while True:
        trocou = False
        passadas+=1
        for i in range(len(empresas)-1):
            comparacoes += 1

            if empresas[1 + i] < empresas[i]:
                empresas[1 + i], empresas[i] = empresas[i], empresas[1 + i]
                trocou = True
                trocas += 1

        if not trocou:
            break
############################################################################################################
import sys
sys.dont_write_bytecode = True


import tracemalloc
from time import time

###########################

'''100 mil Empresas'''

from dados.emp100mil import empresas
tracemalloc.start()
hora_ini = time()
bubble_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n100 mil Empresas:\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')


###########################

'''50 mil Empresas'''

'''from dados.emp50mil import empresas
tracemalloc.start()
hora_ini = time()
bubble_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n50 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')
'''

###########################

'''25 mil Empresas'''

'''from dados.emp25mil import empresas
tracemalloc.start()
hora_ini = time()
bubble_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n25 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')
'''

###########################

'''10 mil Empresas'''

'''from dados.emp10mil import empresas
tracemalloc.start()
hora_ini = time()
bubble_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n10 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')
'''