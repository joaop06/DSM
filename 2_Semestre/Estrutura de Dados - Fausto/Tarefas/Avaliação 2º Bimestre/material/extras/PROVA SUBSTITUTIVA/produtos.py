# 1. Observe a lista de produtos abaixo.
#
# 2. Utilizando os recursos estudados durante o semestre, faça o necessário para
#    que seja possível efetuar uma busca binária na lista.
#
# 3. Por meio da busca binária, informe as posições dos seguintes itens:
#    - Laranja
#    - Bolacha
#    - Iogurte
#    - Leite condensado
#    - Pimenta do reino

produtos1 = [
    'Farinha de trigo',
    'Arroz',
    'Macarrão',
    'Extrato de tomate',
    'Azeite de oliva',
    'Feijão',
    'Leite',
    'Ovos',
    'Iogurte',
    'Achocolatado',
    'Palmito',
    'Creme de leite',
    'Biscoito',
    'Pão de forma',
    'Margarina',
    'Alface',
    'Tomate',
    'Batata',
    'Frango',
    'Carne moída',
    'Café',
    'Alho',
    'Cebola',
    'Milho de pipoca',
    'Sal',
    'Açúcar',
    'Pimenta do reino',
    'Farinha de mandioca',
    'Fubá',
    'Queijo ralado',
    'Goiabada',
    'Sardinha',
    'Suco de uva',
    'Gelatina',
    'Maçã',
    'Banana',
    'Laranja',
    'Melancia',
    'Manga',
    'Cenoura'
]

produtos = [
    'Achocolatado',
    'Alface',
    'Alho',
    'Arroz',
    'Azeite de oliva',
    'Açúcar',
    'Banana',
    'Batata',
    'Biscoito',
    'Café',
    'Carne moída',
    'Cebola',
    'Cenoura',
    'Creme de leite',
    'Extrato de tomate',
    'Farinha de mandioca',
    'Farinha de trigo',
    'Feijão',
    'Frango',
    'Fubá',
    'Gelatina',
    'Goiabada',
    'Iogurte',
    'Laranja',
    'Leite',
    'Macarrão',
    'Manga',
    'Margarina',
    'Maçã',
    'Melancia',
    'Milho de pipoca',
    'Ovos',
    'Palmito',
    'Pão de forma',
    'Pimenta do reino',
    'Queijo ralado',
    'Sal',
    'Sardinha',
    'Suco de uva',
    'Tomate'
]

def busca_binaria(lista, valor_busca):

    ini = 0                # Primeira posição
    fim = len(lista) - 1    # Última posição

    while ini <= fim:
        meio = (ini + fim) // 2      # Operador // é divisão inteira

        if lista[meio] == valor_busca:  #ENCONTROU!
            return meio

        elif valor_busca < lista[meio]:
            fim = meio - 1

        else:
            ini = meio + 1

    return - 1

print(f"Posição de Laranja: {busca_binaria(produtos, 'Laranja')}")
print(f"Posição de Bolacha: {busca_binaria(produtos, 'Bolacha')}")
print(f"Posição de Iogurte: {busca_binaria(produtos, 'Iogurte')}")
print(f"Posição de Leite condensado: {busca_binaria(produtos, 'Leite condensado')}")
print(f"Posição de Pimenta do reino: {busca_binaria(produtos, 'Pimenta do reino')}")
