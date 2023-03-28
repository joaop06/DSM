divisoes = juncoes = comparacoes = 0
def merge_sort_RECURSIVO(empresas):

	global divisoes, juncoes, comparacoes

	if len(empresas) > 1:
		metade_lista = len(empresas) // 2

		sublista_esq = empresas[:metade_lista]
		sublista_dir = empresas[metade_lista:]
		divisoes += 1

		sublista_esq = merge_sort_RECURSIVO(sublista_esq)
		sublista_dir = merge_sort_RECURSIVO(sublista_dir)

		pos_esq = pos_dir = 0
		ordenada = []		# Lista vazia

		while pos_esq < len(sublista_esq) and pos_dir < len(sublista_dir):

			comparacoes += 1
			if sublista_esq[pos_esq] < sublista_dir[pos_dir]:
				ordenada.append(sublista_esq[pos_esq])
				pos_esq += 1

			else:
				ordenada.append(sublista_dir[pos_dir])
				pos_dir += 1


		sobra_sublista = []

		if(pos_esq < pos_dir):
			sobra_sublista = sublista_esq[pos_esq:]

		else:
			sobra_sublista = sublista_dir[pos_dir:]


		juncoes += 1
		return ordenada + sobra_sublista
	
	else:
		return empresas

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
merge_sort_RECURSIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n100 mil Empresas:\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\n')


######################################################

'''50 mil Empresas'''

'''from dados.emp50mil import empresas
hora_ini = time()
merge_sort_RECURSIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n50 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\n')'''


######################################################

'''25 mil Empresas'''

'''from dados.emp25mil import empresas
hora_ini = time()
merge_sort_RECURSIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n25 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\n')'''


######################################################

'''10 mil Empresas'''

'''from dados.emp10mil import empresas
hora_ini = time()
merge_sort_RECURSIVO(empresas)
hora_fim = time()
mem_atual, mem_pico = tracemalloc.get_traced_memory()

print(f'\n\n\n10 mil Empresas\n\nTempo Gasto: {hora_fim - hora_ini}\nPico de Memória: {mem_pico / 1024 / 1024} MB\n')'''
