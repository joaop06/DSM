"""
    1) Identifique o algoritmo abaixo.
    2) Faça o mapeamento das variáveis (registre em comentário o propósito de cada uma delas).
    3) Há um erro no algoritmo. Identifique-o, descreva-o e corrija-o.
"""
div = junc = comps = 0
def a(b):  # b é a lista a ser ordenada
    global div, junc, comps
    
    if len(b) <= 1:
        c = len(b) // 2 # c divide a lista ao meio
        d = b[:c] # d recebe a primeira metade da lista
        e = b[c:] # e recebe a segunda metade
        div += 1 # Realiza a contagen de quantas vezes a lista inicial foi dividida

        d = a(d)
        e = a(e)
        f = g = 0 # 'f' e 'g' são lis
        h = [] # lista vazia para realizar a junção das sublistas posteriormente, sendo onde ficará a primeira parte ordenada da junção
        i = [] # Idem a lista 'h', porem receberá o restante da sublista
        while f < len(d) and g < len(e):

            comps += 1 # Conta quantas comparações foram feita durante o processo, comparando qual lado (esquerdo ou direito) é menor para fazer a junção
            if d[f] < e[g]:
                h.append(d[f])
                f += 1
            else:
                h.append(e[g])
                g += 1
        if(f < g): i = d[f:]
        else: i = e[g:]

        junc += 1 # Número de junções que foram realizadas com as sublistas

        return h + i
    
    else:
        return b


''''
1) MergeSort Recursivo

2) Variáveis de estatística div, junc e comps

3) No primeiro if estava retornando o parâmetro passado a função (b), mas na verdade deveria inicializar o processo de ordenação, e somente no final, no else desse primeiro if que deveria retornar b.
'''