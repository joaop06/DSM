'''
    Função para calcular o Índice de Massa Corpórea
    de uma pessoa, dados o seu peso e sua altura.
'''
def imc(peso, altura):
    # Peso dividido pela altura elevada ao quadrado
    return peso / altura**2

peso = float(input('\n\nPeso: '))
altura = float(input('Altura: '))
imc = imc(peso, altura)

print('IMC = {:.2f}'.format(imc))


####################################

from math import pi
def area(base, altura, tipo):
    if tipo=='R': # Retângulo
        return base*altura
    elif tipo=='T': # Triângulo
        return base * altura / 2
    elif tipo=='E': # Elipse ou Circulo
        return base/2 * altura/2 * pi
    else:
        return None