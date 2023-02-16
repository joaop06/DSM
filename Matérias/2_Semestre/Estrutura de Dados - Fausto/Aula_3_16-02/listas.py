# LISTAS EM PYTHON
# Listas são uma forma de armazenar mais de um valor
# Em uma única variável. Os valores podem ser de tipos diferentes.


# Uma lista de números
valores = [2, 3, 5, 7, 9, 11, "batata", "tomate", True]


'''OPERAÇÕES SOBRE LISTAS

1) PERCURSO: Significa percorrer a lista do primeiro até o último elemento, fazendo aldo com cada um deles. No caso a seguir, vamos exibir cado um dos elementos separadamente usnado print().'''
for v in valores:
    print(v)
print("*"*50)   # Imprime * 50 vezes


''' 2) Inserção de um novo elemento no fim da lista'''
valores.append(45)
print(valores)

valores.append('João')
print(valores)
print('-='*100, '\n')


'''3) Inserindo um novo elemento em uma posição ESPECÍFICA: insert()
        Parâmetros: 1º Posição para inserir (contagem inicia em 0) / 2º Valor a ser inserido'''
valores.insert(4, 'chuchu')     # Insere 'abobrinha' na 5º posição
print(valores)

valores.insert(0, 'abobrinha')  # Insere 'abobrinha' na 1º posição
print(valores)
print('-='*100, '\n')


''' 4) Acessando um valor em uma posição específica'''
print('Elemento da 7º posição é: {}'.format(valores[6]))
print('Elemento da 3º posição é: {}'.format(valores[2]))
print('Elemento da 1º posição é: {}'.format(valores[0]))
print('Elemento da última posição é: {}'.format(valores[-1]))
print('Elemento da penúltima posição é: {}'.format(valores[-2]))
print(valores)
print('-='*100, '\n')


''' 5) Subistituindo valores existentes'''
print("Antes: ", valores)

'''Subistituindo valor da posição 10'''
valores[10] = "cenoura"

'''Subistituindo valor da posição 0'''
valores[0] = "beterraba"

'''Subistituindo valor da última posição'''
valores[-1] = "alho"

print("Depois: ", valores)
print('-='*100, '\n')
