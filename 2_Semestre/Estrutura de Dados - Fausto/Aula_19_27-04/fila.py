import sys
sys.path.insert(0, './')
from lib.queue import Queue


fila = Queue()      # Cria uma fila vazia

# Insere algumas pessoas na fila
fila.enqueue('Leotildes')
fila.enqueue('João')
fila.enqueue('Orizimbo')
fila.enqueue('Valdisney')
fila.enqueue('Pedro')
fila.enqueue('Adamastor')
fila.enqueue('Fausto')

print(fila)

atendido = fila.dequeue()
print(f"Atendido: {atendido}")
print(fila)


fila.enqueue('Marcinéia')
print(fila)


proximo = fila.peek()
print(f"Próximo a ser atendido: {proximo}")
print(fila)