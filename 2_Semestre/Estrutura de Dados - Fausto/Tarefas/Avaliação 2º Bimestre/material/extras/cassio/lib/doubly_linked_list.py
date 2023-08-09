class Node:

    def __init__(self, data):
        self.prev = None       
        self.data = data      
        self.next = None        

class DoublyLinkedList:

    def __init__(self):
        self.__head = None      
        self.__tail = None      
        self.__count = 0       

    def is_empty(self):
        return self.__count == 0

    def __find_node(self, pos):
        if pos == 0: return self.__head

        if pos == self.__count - 1: return self.__tail

        elif pos < self.__count // 2:
            for i in range(1, pos + 1): node = node.next
            return node

        else:
            node = self.__tail 
            for i in range(self.__count - 2, pos - 1, -1):
                node = node.prev
            return node

    def insert(self, pos, val):

        inserted = Node(val)

        if self.is_empty():
            self.__head = inserted
            self.__tail = inserted

        elif pos == 0:
            inserted.next = self.__head
            self.__head.prev = inserted
            self.__head = inserted

        elif pos >= self.__count:
            inserted.prev = self.__tail
            self.__tail.next = inserted
            self.__tail = inserted

        elif pos > 0:
            current = self.__find_node(pos)
            before = current.prev

            before.next = inserted
            inserted.prev = before
            inserted.next = current
            current.prev = inserted

        self.__count += 1

    def insert_front(self, val):
        self.insert(0, val)

    def insert_back(self, val):
        self.insert(self.__count, val)

    def remove(self, pos):

        if self.__count == 0 or pos < 0 or pos > self.__count - 1:
            raise Exception("ERRO: posição inválida para remoção.")

        if pos == 0:
            removed = self.__head
            self.__head = removed.next
            if self.__head is not None: self.__head.prev = None
            if self.__count == 1: self.__tail = None

        elif pos == self.__count - 1:
            removed = self.__tail
            self.__tail = removed.prev
            if self.__tail is not None: self.__tail.next = None
            if self.__count == 1: self.__head = None

        else:
            removed = self.__find_node(pos)
            before = removed.prev   
            after = removed.next   
            before.next = after
            after.prev = before

        self.__count -= 1
        return removed.data

    def remove_front(self):
        return self.remove(0)

    def remove_back(self):
        return self.remove(self.__count - 1)

    def peek(self, pos):
        if pos < 0 or pos >= self.__count:
            raise Exception('ERRO: impossível consultar de uma posição inexistente.')

        node = self.__find_node(pos)
        return node.data

    def peek_front(self):
        return self.peek(0)

    def peek_back(self):
        return self.peek(self.__count - 1)

    def __str__(self):
        output = ""
        node = self.__head
        for pos in range(self.__count):
            if output != "": output += ", "
            output += f"({pos}) => {node.data}"
            node = node.next
        return f"[ {output} ], count: {self.__count}"

    def __rev__(self):
        output = ""
        node = self.__head
        for pos in range(self.__count):
            if output != "": output += ", "
            output += f"({pos}) => {node.data}"
            node = node.prev
        return f"[ {output} ], count: {self.__count}"