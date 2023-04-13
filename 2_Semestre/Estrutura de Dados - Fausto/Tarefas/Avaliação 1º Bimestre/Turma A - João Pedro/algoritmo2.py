"""
    1) Identifique o algoritmo abaixo.
    2) Faça o mapeamento das variáveis (registre em comentário o propósito de cada uma delas).
    3) Há um erro no algoritmo. Identifique-o, descreva-o e corrija-o.
"""    
comps = 0 # Número de comparações
def a(b, c):  # b é a lista de base para a busca; c é o valor a ser buscado
    global comps
    comps = 0

    d = 0 # d marca o início da lista
    e = len(b) - 1 # e define o tamanho da lista -1
    while d <= e: 
        f = (d + e) // 2 # f recebe a posição do meio da lista

        if c == b[f]:
            comps += 1
            return f
        elif c < b[f]:
            comps += 2
            e = f - 1
        else:
            comps += 2
            d = f + 1

    return -1


"""
1) Busca Binária

2) Variável de estatística comps

3) No primeiro if, assim que entrar no bloco, deveria retornar f, mas estava atribuindo f a variável e. Sendo f a posição do valor buscado.
"""
