"""
    1) Identifique o algoritmo abaixo.
    RESPOSTA ~> Trata-se do algoritmo de busca binária
    2) Faça o mapeamento das variáveis (registre em comentário o propósito de cada uma delas).
    RESPOSTA ~>
    a ~> função busca_binaria
    b ~> a lista onde será feita a busca
    c ~> o valor a ser buscado
    d ~> posição inicial
    e ~> posição final
    f ~> meio calculado da lista
    3) Há um erro no algoritmo. Identifique-o, descreva-o e corrija-o.
    RESPOSTA ~> Quando o valor de busca é encontrado, deve-se retornar
                o valor da posição meio, representado, no caso, pela 
                variável f.
"""    

def a(b, c):
    d = 0
    e = len(b) - 1
    while d <= e: 
        f = (d + e) // 2
        # if c == b[f]: e = f   # Erro
        if c == b[f]: return f
        elif c < b[f]: e = f - 1
        else: d = f + 1
    return -1