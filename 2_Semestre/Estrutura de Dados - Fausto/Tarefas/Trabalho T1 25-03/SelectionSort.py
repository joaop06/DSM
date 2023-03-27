passadas = comparacoes = trocas = 0
def selection_sort(empresas):

    global comparacoes, trocas, passadas
    comparacoes = trocas = passadas = 0

    for atual in range(len(empresas) - 1):
        passadas += 1

        menor = atual + 1
        for pos in range(atual + 2, len(empresas)):
            comparacoes += 1
            if empresas[pos] < empresas[menor]:
                menor = pos

        comparacoes += 1
        if empresas[menor] < empresas[atual]:
            empresas[menor], empresas[atual] = empresas[atual], empresas[menor]
            trocas += 1

############################################################################################################



import sys
sys.dont_write_bytecode = True

import tracemalloc
tracemalloc.start()
from time import time

######################################################

'''100 mil Empresas'''

'''from dados.emp100mil import empresas
hora_ini = time()
selection_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n100 mil Empresas:\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''


######################################################

'''50 mil Empresas'''

'''from dados.emp50mil import empresas
hora_ini = time()
selection_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n50 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''



######################################################

'''25 mil Empresas'''

'''from dados.emp25mil import empresas
hora_ini = time()
selection_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n25 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')'''



######################################################

'''10 mil Empresas'''

from dados.emp10mil import empresas
hora_ini = time()
selection_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n10 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')
