"""
    1) Identifique o algoritmo abaixo.
    RESPOSTA ~> Trata-se do algoritmo de ordenação Bubble Sort.
    2) Faça o mapeamento das variáveis (registre em comentário o propósito de cada uma delas).
    RESPOSTA ~>
    a ~> função bubble_sort
    b ~> lista a ser ordenada
    c ~> indicador de houve troca
    d ~> posição do vetor no loop
    3) Há um erro no algoritmo. Identifique-o, descreva-o e corrija-o.
    RESPOSTA ~> Na linha que efetua a troca, estava sendo usada a variável c,
                um valor booleano, como índice da lista. O correto é usar a
                variável d.
"""

def a(b):
    while True:
        c = False
        for d in range(len(b) - 1):
            if b[d + 1] < b[d]:
                # b[d + 1], b[c] = b[c], b[d + 1]   # Erro
                b[d + 1], b[d] = b[d], b[d + 1]
                c = True
        if not c:
            break