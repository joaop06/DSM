"""
    1) Identifique o algoritmo abaixo.
    2) Faça o mapeamento das variáveis (registre em comentário o propósito de cada uma delas).
    3) Há um erro no algoritmo. Identifique-o, descreva-o e corrija-o.
"""
comparacoes = trocas = passadas = 0 
def a(b): # b é a lista a ser ordenada
    global comparacoes, trocas, passadas
    comparacoes = trocas = passadas = 0

    while True:
        c = False # Serve para comparação se a passada teve ou não troca, para poder identificar a hora de parar o loop
        passadas += 1


        for d in range(len(b) - 1): # d é variável de controle dentro do for
            comparacoes += 1
            if b[d + 1] < b[d]:
                b[d + 1], b[c] = b[c], b[d + 1]
                c = True
                trocas += 1

        if not c: # Comparação para ver se teve ou não trocas na passada
            break


"""
1) Bubble Sort

2) Variáveis de estatística comparacoes, trocas, passadas

3) Dentro do bloco if, onde realiza a troca, estava senda passada a posição c para a posição atual do loop. O correto é a variável 'd', onde posição 'd' é a atual e 'd+1' é o sucessor.
"""