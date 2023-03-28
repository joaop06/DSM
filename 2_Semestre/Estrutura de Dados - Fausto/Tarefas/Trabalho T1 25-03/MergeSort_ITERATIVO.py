def merge_sort_ITERATIVO(empresas):
    tam_part = 1
    n = len(empresas)
    
    while (tam_part < n):
        esq = 0
        while (esq < n):
            dir = min(esq + (tam_part * 2 - 1), n - 1)
            meio = (esq + dir) // 2

            if (tam_part > n // 2):
                meio = dir  - (n % tam_part)
            
            tam_esq = meio - esq + 1
            tam_dir = dir - meio
            lista_esq = [0] * tam_esq
            lista_dir = [0] * tam_dir

            for pos_esq in range(0, tam_esq):
                lista_esq[pos_esq] = empresas[esq + pos_esq]

            for pos_esq in range(0, tam_dir):
                lista_dir[pos_esq] = empresas[meio + pos_esq + 1]


            pos_esq, pos_dir, i = 0, 0, esq
            while pos_esq < tam_esq and pos_dir < tam_dir:

                if lista_esq[pos_esq] > lista_dir[pos_dir]:
                    empresas[i] = lista_dir[pos_dir]
                    pos_dir += 1
                else:
                    empresas[i] = lista_esq[pos_esq]
                    pos_esq += 1
                i += 1


            while pos_esq < tam_esq:
                empresas[i] = lista_esq[pos_esq]
                pos_esq += 1
                i += 1


            while pos_dir < tam_dir:
                empresas[i] = lista_dir[pos_dir]
                pos_dir += 1
                i += 1

            esq += tam_part * 2

        tam_part *= 2
    return empresas

############################################################

import sys
sys.dont_write_bytecode = True

import tracemalloc
tracemalloc.start()
from time import time

######################################################

'''100 mil Empresas'''

from dados.emp100mil import empresas
hora_ini = time()
merge_sort_ITERATIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n100 mil Empresas:\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\n')


######################################################

'''50 mil Empresas'''

'''from dados.emp50mil import empresas
hora_ini = time()
merge_sort_ITERATIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n50 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\n')'''


######################################################

'''25 mil Empresas'''

'''from dados.emp25mil import empresas
hora_ini = time()
merge_sort_ITERATIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n25 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\n')'''


######################################################

'''10 mil Empresas'''

'''from dados.emp10mil import empresas
hora_ini = time()
merge_sort_ITERATIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n10 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\n')'''
