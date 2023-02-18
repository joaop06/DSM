# Continuação Aula anterior...
valores = ['beterraba', 2, 3, 5, 7, 'chuchu', 9, 11, 'batata', 'tomate', 'cenoura', 45, 'alho']

''' 6)'''
print('6) Determinando quantos elementos há na lista: len()\n')
print('Número de elementos na lista:', len(valores))

'''Imprimindo o último elemento da lista com a ajuda de len()'''
print('Último valor da lista:', valores[len(valores) - 1])
print('-='*100, '\n')


''' 7)'''
print('7) Removendo o último elemento da lista: pop()\n')
print('Antes: ', valores)
ultimo = valores.pop()
print('Valor removido da lista: ', ultimo)
print('Depois: ', valores)
print('-='*100, '\n')


''' 8)'''
print('8) Removendo um elemento por sua posição: pop() com parâmetro\n')
print('Antes: ', valores)
pos9 = valores.pop(9)   # Remove o elemento da posição 9
print('Valor removido da posição 9: ', pos9)

pos0 = valores.pop(0)   # Remove o elemento da posição 0
print('Valor removido da posição 0: ', pos0)
print('Depois: ', valores)
print('-='*100, '\n')


''' 9)'''
print('9) Removendo um elemento pelo seu valor: remove()\n')
print('Antes: ', valores)
valores.remove('batata') # Remove o valor 'batata'
valores.remove(5) # Remove o valor 5
print('Depois: ', valores)
print('-='*100, '\n')

''' Acrescentando mais elementos na lista'''
valores.append(22)
valores.append(256)
valores.append('Kleber')
valores.append(False)
valores.append('Notebook')
valores.append('mandioca')
valores.append(19)


''' 10)'''
print('10) Fatiando uma lista\n')
print('Antes: ', valores)

''' Cria uma sublista que contém os elementos de 2 até a posição 7 (Posição 8 NÃO ENTRA)'''
sublista2_7 = valores[2:8]
print('Sublista de 2 a 7 (variável "sublista2_7"): {}'.format(sublista2_7))

''' Cria uma sublista que contém os elementos do início até a posição 5 (posição 6 NÃO ENTRA)'''
sublista0_5 = valores[:6]
print('Sublista de 0 a 5 (variável "sublista0_5"): {}'.format(sublista0_5))

''' Cria uma sublista que contém os elementos da posição 10 até o fim da lista'''
sublista10_fim = valores[10:]
print('Sublista de 10 até o Fim (variável "sublista10_fim"): {}'.format(sublista10_fim))
print('-='*100, '\n')