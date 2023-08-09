class Stack:

    def __init__(self):
        self.__data = []

    def push(self, val):
        self.__data.append(val)

    def is_empty(self):
        return len(self.__data) == 0

    def pop(self):
        if self.is_empty():     
            raise Exception('ERRO: impossível remover de uma pilha vazia.')

        return self.__data.pop()

    def peek(self):
        if self.is_empty():    
            raise Exception('ERRO: impossível consultar uma pilha vazia.')

        return self.__data[-1]

    def __str__(self):
        return str(self.__data)