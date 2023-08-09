# 1. Em um escritório, há uma impressora compartilhada. No início do expediente,
#    Ariovaldo, Jucicléia, Epaminondas e Clementina enviaram a ela trabalhos de 
#    impressão.

from lib.deque import Deque

deque = Deque()
print(deque.to_str())
deque.insert_back("Ariovaldo")
deque.insert_back("Jucicléia")
deque.insert_back("Epaminondas")
deque.insert_back("Clementina")
print(deque.to_str())
        
# 2. No entanto, antes que o trabalho de Ariovaldo pudesse ser impresso, Tertuliano e
#    Apolônia enviaram seus trabalhos de impressão com prioridade, para que ficassem
#    prontos antes dos impressos dos colegas.
deque.insert_front("Apolônia")
deque.insert_front("Tertuliano")
print(deque.to_str())

# 
# 3. Quando 4 trabalhos de impressão já haviam sido concluídos, Clementina percebeu
#    que havia enviado o arquivo errado, e cancelou seu trabalho de impressão.
desistente = deque.remove_back()
print(f"Desistente: {desistente}")
print(deque.to_str())

# 
# 4. Enquanto a impressora ainda processava os pedidos, ela recebeu mais dois pedidos:
#    o de Constança, sem prioridade, e o de Zenóbio, com prioridade.

deque.insert_back("Constança")
deque.insert_front("Zenóbio")
print(deque.to_str())

# 
# 5. Utilize a estrutura de dados apropriada para representar a situação relatada.