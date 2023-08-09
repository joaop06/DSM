"""
    1. Todas as questões deste arquivo referem-se à árvore binária de busca representada
        na imagem "abb.png".

    2. Caso seja necessário escrever algum código para responder às perguntas seguintes,
        importe a classe BinarySearchTree neste arquivo e faça os testes aqui.

    3. Qual a altura da subárvore à direita de 45?

    #RESPOSTA - A altura é 6

    4. Quais níveis da árvore estão completos, isto é, já contêm o número máximo de nodos
        permitidos?

    #RESPOSTA - São os níveis 0, 1, 2 e 3
    
    5. Qual a profundidade do nodo de valor 27, em relação à árvore como um todo?

    #RESPOSTA - A altura do nodo 27 é 4

    6. A árvore representada está equilibrada? Por quê? Justifique sua resposta.

    #RESPOSTA - Não, porque é maior que 1 a diferença de altura entre as subárvores direita e esquerda
              
    7. Como ficaria o percurso pré-ordem desta árvore?

    #RESPOSTA Árvore pré-ordem: [45, 24, 9, 3, 0, 6, 15, 12, 18, 39, 36, 27, 33, 42, 72, 66, 60, 49, 54, 51, 57, 63, 69, 84, 78, 75, 81, 96, 90, 87, 99]

    8. Se for removido o nodo raiz (de valor 45), qual(is) nodo(s) poderia(m) ocupar o seu lugar?
       Justifique sua resposta.    

    #RESPOSTA - 42 , Por ser o maior nodo da subárvore esquerda

"""
from lib.binary_search_tree import BinarySearchTree

arvore = BinarySearchTree()

arvore.insert(45)
arvore.insert(24)
arvore.insert(72)
arvore.insert(9)
arvore.insert(39)
arvore.insert(66)
arvore.insert(84)
arvore.insert(3)
arvore.insert(15)
arvore.insert(36)
arvore.insert(42)
arvore.insert(60)
arvore.insert(69)
arvore.insert(78)
arvore.insert(96)
arvore.insert(0)
arvore.insert(6)
arvore.insert(12)
arvore.insert(18)
arvore.insert(27)
arvore.insert(49)
arvore.insert(75)
arvore.insert(81)
arvore.insert(90)
arvore.insert(99)
arvore.insert(33)
arvore.insert(54)
arvore.insert(87)
arvore.insert(51)
arvore.insert(57)
arvore.insert(63)

arvore.remove(45)


pre_ordem = []
arvore.pre_order_traversal(lambda val: pre_ordem.append(val))

print('Árvore pré-ordem:', pre_ordem)


pre_ordem = []
arvore.pre_order_traversal(lambda val: pre_ordem.append(val))
print('Novo nodo raiz tem o valor', pre_ordem[0])




