CREATE DATABASE Pizzaria;
USE Pizzaria
CREATE TABLE Pizza(
	id INT,
	sabor VARCHAR(45),
	tamanho VARCHAR(10),
	descricao VARCHAR(200),
	preco DECIMAL(5,2),
	material_embalagem VARCHAR(30),
	tamanho_embalagem VARCHAR(10),
	preco_embalagem DECIMAL(5,2)
);
CREATE TABLE Ingredientes(
	id INT,
	nome VARCHAR(45),
	Pizza_id INT
);
CREATE TABLE Receita(
	id INT,
	descricao VARCHAR(200),
	autor VARCHAR(60),
	Pizza_id INT
);
CREATE TABLE Pizza_Pizzaiolo(
	Receita_id INT,
	Pizzaiolo_id INT
);
CREATE TABLE Pizzaiolo(
	id INT,
	nome VARCHAR(45)
);
INSERT INTO Pizza(id, sabor, tamanho, descricao, preco, material_embalagem, tamanho_embalagem, preco_embalagem)
	VALUES (1,	'Franco c/ Catupiry', 'Pequena', 'Frango, Catupiry, Batata Palha', 53.90, 'Papelão', 'Pequena', 2.50);
INSERT INTO Pizza(id, sabor, tamanho, descricao, preco, material_embalagem, tamanho_embalagem, preco_embalagem)
VALUES
(2,	'Portuguesa', 'Grande', 'Palmito, Muçarela, Ovo, Cebola', 55.00, 'Comum', 'Grande', 5.00),
(3,	'Lombinho', 'Média', 'Lombinho, Muçarela, Cebola, Azeitona', 51.90, 'Comum', 'Média', 3.50),
(4,	'Peperone', 'Pequena', 'Muçarela, Peperone, Azeitona', 54.90, 'Comum', 'Pequena', 2.50),
(5,	'4 Queijos', 'Grande', 'Muçarela, Provolone, Parmesão, Gorgonzola', 57.00, 'Comum', 'Grande', 5.00);

SELECT * FROM Pizza

INSERT INTO Ingredientes(id, nome)
VALUES
(1, 'Frango'),
(2, 'Catupiry'),
(3, 'Batata Palha'),
(4, 'Palmito'),
(5, 'Muçarela'),
(6, 'Ovo'),
(7, 'Cebola'),
(8, 'Lombinho'),
(9, 'Azeitona'),
(10, 'Peperone'),
(11, 'Provolone'),
(12, 'Parmesão'),
(13, 'Gorgonzola');

INSERT INTO Receita(id, descricao, autor)
VALUES
(1, 'Frango: Coloque molho, Catupiry, Frango, mais Catupiry e Batata Palha -- Assar por 25 min', 'João'),
(2, 'Portuguesa: Coloque molho, Muçarela, Palmito, Ovo, Cebola e Azeitona -- Assar por 30 min', 'Pedro'),
(3, 'Lombinho: Coloque molho, Lombinho, Muçarela, Cebola e Azeitona -- Assar por 20 min', 'Bob'),
(4, 'Peperone: Coloque molho, Muçarela, Peperone e Azeitona -- Assar por 20 min', 'Klebershoonw'),
(5, '4 Queijos: Coloque molho, Muçarela, Provolone, Parmesão, Gorgonzola -- Assar por 15 min', 'João');

INSERT INTO Pizzaiolo(id, nome)
VALUES
(1, 'Romário'),
(2, 'Murilo Huff'),
(3, 'Ney'),
(4, 'Lebron'),
(5, 'Zé Ramalho');

SELECT * FROM Pizzaiolo

UPDATE Pizza SET descricao = 'Palmito, Muçarela, Milho, Ovo, Cebola' WHERE id = 2

SELECT * FROM Pizza

DELETE FROM Pizza WHERE id = 4
DELETE FROM Receita WHERE id = 4

SELECT * FROM Pizza
SELECT * FROM Receita

UPDATE Pizza SET material_embalagem = 'Comum' WHERE id = 1
SELECT * FROM Pizza

INSERT INTO Ingredientes(id, nome)
	VALUES (14, 'Milho');

UPDATE Receita SET descricao = 'Portuguesa: Coloque molho, Muçarela, Palmito, Milho, Ovo, Cebola e Azeitona -- Assar por 30 min' WHERE id = 2

SELECT * FROM Ingredientes
SELECT * FROM Receita