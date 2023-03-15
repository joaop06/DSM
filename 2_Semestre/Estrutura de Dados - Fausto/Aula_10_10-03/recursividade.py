print('''\n########################################################################################################################

RECURSIVIDADE

Trata-se de uma técnica de programação pela qual uma função chama a si mesma, em uma condição diferente da inicial. O principal objetivo do uso da recursividade é diminuir a complexividade de algoritmos.

''')


# Cálculo do fatorial, versão iterativa (não recursiva).
def fatorial_iter(num):

    # Não é possível calcular fatorial de número negativo.
    if num < 0:
        raise Exception("ERRO: Número negativo, cálculo impossível.")
    
    res = 1

    # Loop descendente de num até 1.
    for x in range(num, 0, -1):
        res *= x

    return res

###################################################################

# Cálculo do fatorial, de forma recursiva
def fatorial_rec(num):
    
    # Não é possível calcular fatorial de número negativo.
    if num < 0:
        raise Exception("ERRO: Número negativo, cálculo impossível.")
    
    if num <= 1:    # O fatorial de 0 e 1 é 1
        return 1
    else:
        return num * fatorial_rec(num - 1)      # Chamada recursiva à função

###################################################################


print(f'7! = {fatorial_iter(998)}')
#print(f'0! = {fatorial_iter(0)}')
#print(f'-6! = {fatorial_iter(-6)}')

print(f'7! = {fatorial_rec(998)}')
print(f'0! = {fatorial_rec(0)}')

