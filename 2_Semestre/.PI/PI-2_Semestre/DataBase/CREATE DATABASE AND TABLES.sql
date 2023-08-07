CREATE DATABASE RangOn;
USE rangon;

CREATE TABLE Produtos (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    tipo VARCHAR(15),
    imagem TEXT
);

SELECT * FROM Produtos;
DROP TABLE Produtos;

INSERT INTO produtos (nome, descricao, preco, tipo, imagem) VALUES
    ('Hambúrguer', 'Delicioso hambúrguer caseiro', 10.50, 'Lanche', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Hamburguer.jpg?raw=true'),
    ('Pizza Margherita', 'Pizza tradicional com molho de tomate, queijo e manjericão', 25.00, 'Pizza', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Pizza.jpg?raw=true'),
    ('Batata Frita', 'Porção de batata frita crocante', 8.50, 'Porção', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Por%C3%A7%C3%B5es.png?raw=true'),
    ('Bolinho de Queijo', 'Deliciosos bolinhos de queijo', 7.00, 'Porção', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Por%C3%A7%C3%B5es.png?raw=true'),
    ('Sanduíche de Frango', 'Sanduíche com frango grelhado e vegetais frescos', 12.50, 'Lanche', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Hamburguer.jpg?raw=true'),
    ('Pizza Calabresa', 'Pizza com calabresa, queijo e molho de tomate', 27.00, 'Pizza', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Pizza.jpg?raw=true'),
    ('Porção de Onion Rings', 'Cebolas empanadas e fritas', 9.00, 'Porção', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Por%C3%A7%C3%B5es.png?raw=true'),
    ('Bolinho de Bacalhau', 'Bolinhos de bacalhau bem temperados', 8.50, 'Porção', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Por%C3%A7%C3%B5es.png?raw=true'),
    ('X-Burger', 'Hambúrguer, queijo, alface, tomate e maionese', 11.00, 'Lanche', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Hamburguer.jpg?raw=true'),
    ('Pizza Quatro Queijos', 'Pizza com quatro tipos de queijo derretidos', 28.50, 'Pizza', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Pizza.jpg?raw=true'),
    ('Batata Rústica', 'Batatas rústicas assadas com ervas', 9.50, 'Porção', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Por%C3%A7%C3%B5es.png?raw=true'),
    ('Bolinho de Carne', 'Bolinhos de carne saborosos', 7.50, 'Porção', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Por%C3%A7%C3%B5es.png?raw=true'),
    ('X-Salada', 'Hambúrguer, queijo, alface, tomate, cebola e maionese', 11.50, 'Lanche', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Hamburguer.jpg?raw=true'),
    ('Pizza Portuguesa', 'Pizza com presunto, queijo, cebola, ovo e azeitonas', 29.00, 'Pizza', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Pizza.jpg?raw=true'),
    ('Nuggets de Frango', 'Porção de nuggets de frango crocantes', 8.00, 'Porção', 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Por%C3%A7%C3%B5es.png?raw=true');



CREATE TABLE Clientes (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(255) NOT NULL,
    celular INT (11) DEFAULT 0,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(50) NOT NULL,

    cep INT(8) DEFAULT 0,
    cidade VARCHAR(50) DEFAULT '',
    estado VARCHAR(2) DEFAULT '',
    endereco VARCHAR(255) DEFAULT '',
    numero INT(5) DEFAULT 0
);
SELECT * FROM Clientes;


CREATE TABLE Admin (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome_completo VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(50) NOT NULL
);
SELECT * FROM Admin;
INSERT INTO Admin VALUES (NULL, 'admin', 'admin', '1234');

SELECT Pedidos.*, Clientes.nome_completo FROM Pedidos INNER JOIN Clientes ON Pedidos.id_cliente_fk = Clientes.id;
UPDATE Clientes SET nome_completo = 'João' WHERE id = 1;



CREATE TABLE Pedidos(
	num_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente_fk INT,
    list_produtos TEXT,
    total DECIMAL(9,2),
    status_pedido VARCHAR(12),
    
    FOREIGN KEY (id_cliente_fk) REFERENCES Clientes(id)
);
SELECT * FROM Pedidos;
UPDATE Pedidos SET status_pedido = 'Finalizado' WHERE num_pedido = 7;

SELECT * FROM Pedidos WHERE id_cliente_fk = 4 AND status_pedido IN ('Finalizado', 'Cancelado') ORDER BY num_pedido DESC;


SET SQL_SAFE_UPDATES = 0;
SELECT user FROM mysql.user;
select @@datadir;