"""
    1) Identifique o algoritmo abaixo.
    RESPOSTA ~> Algoritmo de ordenação Merge Sort
    2) Faça o mapeamento das variáveis (registre em comentário o propósito de cada uma delas).
    RESPOSTA ~>
    a ~> função merge_sort
    b ~> lista a ser ordenada
    c ~> meio calculado da lista
    d ~> sublista da esquerda
    e ~> sublista da direita
    f ~> posição na sublista esquerda
    g ~> posição na sublista direita
    h ~> lista ordenada
    i ~> lista de sobra
    3) Há um erro no algoritmo. Identifique-o, descreva-o e corrija-o.
    RESPOSTA ~> dentro do loop, está sendo feito append na
                variável i, que representa a sobra. O correto
                é que seja a variável h, que é a lista ordenada
"""

def a(b):
    if len(b) <= 1: return b
    c = len(b) // 2
    d = b[:c]
    e = b[c:]
    d = a(d)
    e = a(e)
    f = g = 0
    h = []
    i = []
    while f < len(d) and g < len(e):
        if d[f] < e[g]:
            # i.append(d[f]) # Erro
            h.append(d[f])
            f += 1
        else:
            # i.append(e[g]) # Erro
            h.append(e[g])
            g += 1
    if(f < g): i = d[f:]
    else: i = e[g:]
    return h + i