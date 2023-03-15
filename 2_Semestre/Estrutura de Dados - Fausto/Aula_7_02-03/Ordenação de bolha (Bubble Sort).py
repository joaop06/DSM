print('''
ALGORITMO DE ORDENAÇÃO BUBBLE SORT

Percorre a lista a ser ordenada em sucessivas passadas, trocando dois elementos adjacentes sempre que o segundo for MENOR que o primeiro. Efetua tantas passadas quanto necessárias, até que, na última passada, nenhuma troca seja efetuada.''')

comps = trocas = passadas = 0
def bubble_sort(lista):
    global comps, trocas, passadas
    comps = trocas = passadas = 0

    # Loop etarno, não sabemos quantas passadas serão necessárias
    while True:
        trocou = False
        passadas += 1

        '''Percurso da lista, do primeiro ao PENÚLTIMO elemento, com acesso a cada posição.'''
        for i in range(len(lista)-1):
            comps += 1

            '''Se o número que está à frente na lista for MENOR do que o que está atrás, TROCA.'''
            if lista[i+1] < lista[i]:
                lista[i+1], lista[i] = lista[i], lista[i+1]
                trocou = True
                trocas += 1
        
        if not trocou:  # Não houve troca na passada
            break       # Interrompe o loop eterno; acabou