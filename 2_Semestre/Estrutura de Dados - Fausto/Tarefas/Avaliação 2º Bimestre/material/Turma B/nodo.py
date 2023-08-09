"""
    1. Observe a classe Nodo listada logo abaixo.

    2. Responda: para qual ou quais estruturas esse nodo pode ser utilizado? R: Pode ser usada em grafos, listas encadeadas e árvores

    3. Qual seria o propósito dos atributos a, b e c?
    R: O atributo 'a' é armazena algum dado associado ao nó. O tipo desse dado pode variar de acordo com a aplicação específica da estrutura em que está sendo utilizado.
    O 'b' é utilizado para referenciar o próximo nó na estrutura. Por exemplo, em uma lista encadeada, 'b' pode apontar para o próximo nó da lista.
    O atributo 'c' é utilizado para referenciar outro nó relacionado ao nó atual. O uso desse atributo depende do contexto da estrutura de dados. Em uma árvore, por exemplo, c pode apontar para um filho do nó atual.

"""

class Node:
    def __init__(self, x):
        self.a = x
        self.b = None
        self.c = None
