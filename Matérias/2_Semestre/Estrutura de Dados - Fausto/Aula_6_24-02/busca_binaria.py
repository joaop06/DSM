print('''
ALGORITMO DE BUSCA BINÁRIA

Dados uma lista, que deve estar PREVIAMENTE ORDENADA, e um valor de busca, devide a lista em duas metades procurando pelo valor de busca apenas na metade onde o valor poderia estar. Novas subdivisões são feitas até que se encontre o valor de busca ou que reste apenas uma sublista vazia, quando então se conclui que o valor de busca não existe na lista.
''')


def busca_binaria(lista, val):
    cont = 0        # Conta o número de comparações
    ini = 0                 # Início da lista
    fim = len(lista) - 1    # Fim da lista

    while ini <= fim:
        meio = (ini + fim)//2   # Divisão inteira

        # Valor de busca foi encontrado, retorna a posição.
        if lista[meio] == val:
            cont += 1
            return meio
        elif val < lista[meio]:
            cont += 2
            fim = meio - 1
        else: # val > lista[meio]
            cont += 2
            ini = meio + 1
    return -1


from data.lista_nomes import nomes

num = str(input('Nome para buscar: ')).upper()
buscando = busca_binaria(nomes, num)

if buscando == -1:
    print('Nome não encontrado.')
else:
    print(f'O nome buscado está na posição {buscando}\n')