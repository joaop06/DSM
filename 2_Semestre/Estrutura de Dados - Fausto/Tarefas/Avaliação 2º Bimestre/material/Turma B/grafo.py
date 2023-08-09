"""
1. Todas as questões deste arquivo referem-se ao grafo representado
   na imagem "grafo.png".

2. Importe a classe Graph neste arquivo e implemente em código o grafo
   mostrado na imagem. Use print() para exibir o grafo.

3. Exclua o vértice cujo valor é "Etelvina". Use print() para exibir o grafo
   após a exclusão.
"""

from lib.graph import Graph

g = Graph()

# Adicionando os vértices e as arestas
g.add_edge("Guiomar", "Veneranda", "amizade")
g.add_edge("Veneranda", "Guiomar", "amizade")
g.add_edge("Veneranda", "Quitéria", "dívida")
g.add_edge("Veneranda", "Etelvina", "emprego")
g.add_edge("Guiomar", "Nereu", "madrinha")
g.add_edge("Nereu", "Guiomar", "afilhado")
g.add_edge("Nereu", "Veneranda", "paixão")
g.add_edge("Nereu", "Etelvina", "filho")
g.add_edge("Etelvina", "Nereu", "mãe")
g.add_edge("Quitéria", "Nereu", "paixão")

print(g)# Exibindo o grafo
g.remove_vertex("Etelvina")# Excluindo o vértice "Etelvina"
print(g)# Exibindo o grafo atualizado
