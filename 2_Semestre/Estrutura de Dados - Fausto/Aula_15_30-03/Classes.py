'''
    Classe é uma estrutura que representa conjuntamente dados e algoritmos.
    Uma classe pode ser comparada a uma "assadeira" com a qual se pode produzir diferentes "assados" (objetos), variando os "ingredientes" (dados) e o "modo de fazer" (algoritmos). Apesar dessa variação, todos os objetos criados a partir de uma classe terão sempre o formato determinado por esta.


    1) PascalCase       --> FormaGeométrica      (nomes de classes na maioria das linguagens)
    (1º letra maiúscula)


    2) camelCase        --> getElementById      (variáveis e nomes de funções em JavaScript e Java)
    (1º letra maiúscula e as demais maiúsculas)

    3) snake_case       --> memory_peak         (variáveis e nomes de funções em python e C)
    (Tudo minúsculo e sublinhado)

    4) slug-case        --> font-family         (propriedades em CSS)
    (Tudo minúsculo e hífen)

'''

# Por convenção, nomes de classe seguem a convenção PascalCase.
class FormaGeométrica:

    '''
        Uma classe pode ter, dentro de si, tanto dados quanto funções (estas, representando os algoritmos). Uma função especial, chamada __init__, é chamada sempre que um novo ovjeto é criado a partir de uma classe. Essa função especial é chamada de CONSTRUTOR.

        Quando aparecem dentro de uma classe:
            ~> Funções passam a ser chamadas de MÉTODOS, e seu primeiro parâmetro é sempre self, que representa o próprio objeto.
            ~> Variáveis passam a ser chamadas ATRIBUTOS.
    '''

    def __init__(self, base, altura, tipo):

        # Validação dos parâmetros recebidos
        if type(base) not in [int, float] or base <= 0:
            raise Exception(f"ERRO: a base ({base}) deve ser numérica e maior que zero.")

        if type(altura) not in [int, float] or altura <= 0:
            raise Exception(f"ERRO: a altura ({altura}) deve ser numérica e maior que zero.")
        
        if tipo not in ["R", "T", "E"]:
            raise Exception(f"ERRO: o tipo ({tipo}) deve ser 'R', 'T' ou 'E'.")



        # Armazena os dados recebidos DENTRO do objeto, com self
        self.__base = base
        self.__altura = altura
        self.__tipo = tipo

###################################################################################################

forma1 = FormaGeométrica(12, 2, "T")

forma1.base = "batata"
forma1.altura = -4


print(f'''
Base: {forma1.base}
Altura: {forma1.altura}
Tipo: {forma1.__tipo}
''')