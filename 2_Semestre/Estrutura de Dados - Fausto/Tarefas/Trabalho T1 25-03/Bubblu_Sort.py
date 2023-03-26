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


















        
#####################################
import sys
sys.dont_write_bytecode = True
from dados.emp100mil import empresas
from time import time
import tracemalloc

tracemalloc.start()


empresas = empresas[:2500]
hora_ini = time()
bubble_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\nTempo Gasto: {hora_fim - hora_ini}\n\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')