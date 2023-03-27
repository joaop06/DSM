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


import tracemalloc
tracemalloc.start()



'''50 mil empresas'''

from dados.emp50mil import empresas
hora_ini = time()
bubble_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print("50 mil Empresas!!")
print(f'\n\n\nTempo Gasto: {hora_fim - hora_ini}\n\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')



###########################

'''25 mil empresas'''

from dados.emp25mil import empresas
hora_ini = time()
bubble_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print("25 mil Empresas!!")
print(f'\n\n\nTempo Gasto: {hora_fim - hora_ini}\n\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')



###########################

'''10 mil empresas'''

from dados.emp10mil import empresas
hora_ini = time()
bubble_sort(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print("10 mil Empresas!!")
print(f'\n\n\nTempo Gasto: {hora_fim - hora_ini}\n\nPico de Memória: {mem_pico / 1024 / 1024} MB\nComparações: {comparacoes}, Trocas: {trocas}, Passadas: {passadas}.\n')