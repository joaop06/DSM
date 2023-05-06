import sys
sys.path.insert(0, './')
from lib.doubly_linked_list import DoublyLinkedList

lista = DoublyLinkedList()
print(lista)

# Insere o primeiro elemento
lista.insert(0, "Macarrão")
print(lista)


# Insere no fim
lista.insert(1, "Molho de Tomate")
print(lista)


# Insere em uma posição intermediária
lista.insert(1, "Óleo de soja")
print(lista)


# Insere no início usando o método de atalho
lista.insert_front("Carne moída")
print(lista)


# Mais uma inserção em posição intermediária
lista.insert(3, "Sal")
print(lista)