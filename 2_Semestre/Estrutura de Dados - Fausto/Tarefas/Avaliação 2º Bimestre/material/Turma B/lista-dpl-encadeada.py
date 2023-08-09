"""
    Copie neste arquivo o código da classe da lista duplamente encadeada
    e implemente nela um método exiba a lista em ordem inversa
    (do último ao primeiro).
"""
class ListaDuplamenteEncadeada:
    class Nodo:
        def __init__(self, dado):
            self.ant = None
            self.dado = dado
            self.prox = None

    def __init__(self):
        self.__cabeca = None
        self.__cauda = None
        self.__tamanho = 0

    def obter_tamanho(self):
        return self.__tamanho

    def __encontrar_nodo(self, pos):
        if pos == 0:
            return self.__cabeca
        if pos == self.obter_tamanho() - 1:
            return self.__cauda
        if pos < self.obter_tamanho() // 2:
            nodo = self.__cabeca
            for i in range(1, pos + 1):
                nodo = nodo.prox
            return nodo
        else:
            nodo = self.__cauda
            for i in range(self.obter_tamanho() - 2, pos - 1, -1):
                nodo = nodo.ant
            return nodo

    def inserir(self, pos, val):
        inserido = self.Nodo(val)
        if self.obter_tamanho() == 0:
            self.__cabeca = inserido
            self.__cauda = inserido
        elif pos == 0:
            inserido.prox = self.__cabeca
            self.__cabeca.ant = inserido
            self.__cabeca = inserido
        elif pos >= self.obter_tamanho():
            inserido.ant = self.__cauda
            self.__cauda.prox = inserido
            self.__cauda = inserido
        elif pos > 0:
            atual = self.__encontrar_nodo(pos)
            antes = atual.ant
            antes.prox = inserido
            inserido.ant = antes
            inserido.prox = atual
            atual.ant = inserido
        self.__tamanho += 1

    def inserir_inicio(self, val):
        self.inserir(0, val)

    def inserir_fim(self, val):
        self.inserir(self.obter_tamanho(), val)

    def remover(self, pos):
        if self.obter_tamanho() == 0 or pos < 0 or pos > self.obter_tamanho() - 1:
            raise Exception("ERRO: posição inválida para remoção.")
        if pos == 0:
            removido = self.__cabeca
            self.__cabeca = removido.prox
            if self.__cabeca is not None:
                self.__cabeca.ant = None
            if self.obter_tamanho() == 1:
                self.__cauda = None
        elif pos == self.obter_tamanho() - 1:
            removido = self.__cauda
            self.__cauda = removido.ant
            if self.__cauda is not None:
                self.__cauda.prox = None
            if self.obter_tamanho() == 1:
                self.__cabeca = None
        else:
            removido = self.__encontrar_nodo(pos)
            antes = removido.ant
            depois = removido.prox
            antes.prox = depois
            depois.ant = antes
        self.__tamanho -= 1
        return removido.dado

    def remover_inicio(self):
        return self.remover(0)

    def remover_fim(self):
        return self.remover(self.obter_tamanho() - 1)

    def consultar(self, pos):
        if self.obter_tamanho() == 0 or pos < 0 or pos >= self.obter_tamanho():
            raise Exception("ERRO: posição inválida para consulta")
        nodo = self.__encontrar_nodo(pos)
        return nodo.dado

    def consultar_inicio(self):
        return self.consultar(0)

    def consultar_fim(self):
        return self.consultar(self.obter_tamanho() - 1)

    def buscar(self, val):
        nodo = self.__cabeca
        for pos in range(0, self.obter_tamanho()):
            if nodo.dado == val:
                return pos
            nodo = nodo.prox
        return -1

    def __str__(self):
        if self.obter_tamanho() == 0:
            return "*** [ LISTA VAZIA ] ***\n\n"
        else:
            repr = f"LISTANDO {self.obter_tamanho()} ITEM(S)\n"
            repr += ('=' * 50) + "\n"
            nodo = self.__cabeca
            for pos in range(self.obter_tamanho()):
                repr += f"NODO #{pos}, endereço: {hex(id(nodo))}\n"
                repr += f"ant: {hex(id(nodo.ant))}\n"
                repr += f"DADO: {nodo.dado}\n"
                repr += f"prox: {hex(id(nodo.prox))}\n"
                repr += ('-' * 50) + "\n"
                nodo = nodo.prox
            repr += "\n\n"
            return repr
        
    def imprimir_invertido(self):
        if self.obter_tamanho() == 0:
            print("*** [ LISTA VAZIA ] ***\n\n")
        else:
            repr = f"LISTANDO {self.obter_tamanho()} ITEM(S) INVERTIDOS\n"
            repr += ('=' * 50) + "\n"
            nodo = self.__cauda
            for pos in range(self.obter_tamanho()-1, -1, -1):
                repr += f"NODO #{pos}, endereço: {hex(id(nodo))}\n"
                repr += f"ant: {hex(id(nodo.ant))}\n"
                repr += f"DADO: {nodo.dado}\n"
                repr += f"prox: {hex(id(nodo.prox))}\n"
                repr += ('-' * 50) + "\n"
                nodo = nodo.ant
            repr += "\n\n"
            print(repr)

