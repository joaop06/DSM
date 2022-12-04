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
	VALUES (1,	'Franco c/ Catupiry', 'Pequena', 'Frango, Catupiry, Batata Palha', 53.90, 'Papel�o', 'Pequena', 2.50);
INSERT INTO Pizza(id, sabor, tamanho, descricao, preco, material_embalagem, tamanho_embalagem, preco_embalagem)
VALUES
(2,	'Portuguesa', 'Grande', 'Palmito, Mu�arela, Ovo, Cebola', 55.00, 'Comum', 'Grande', 5.00),
(3,	'Lombinho', 'M�dia', 'Lombinho, Mu�arela, Cebola, Azeitona', 51.90, 'Comum', 'M�dia', 3.50),
(4,	'Peperone', 'Pequena', 'Mu�arela, Peperone, Azeitona', 54.90, 'Comum', 'Pequena', 2.50),
(5,	'4 Queijos', 'Grande', 'Mu�arela, Provolone, Parmes�o, Gorgonzola', 57.00, 'Comum', 'Grande', 5.00);

SELECT * FROM Pizza

INSERT INTO Ingredientes(id, nome)
VALUES
(1, 'Frango'),
(2, 'Catupiry'),
(3, 'Batata Palha'),
(4, 'Palmito'),
(5, 'Mu�arela'),
(6, 'Ovo'),
(7, 'Cebola'),
(8, 'Lombinho'),
(9, 'Azeitona'),
(10, 'Peperone'),
(11, 'Provolone'),
(12, 'Parmes�o'),
(13, 'Gorgonzola');

INSERT INTO Receita(id, descricao, autor)
VALUES
(1, 'Frango: Coloque molho, Catupiry, Frango, mais Catupiry e Batata Palha -- Assar por 25 min', 'Jo�o'),
(2, 'Portuguesa: Coloque molho, Mu�arela, Palmito, Ovo, Cebola e Azeitona -- Assar por 30 min', 'Pedro'),
(3, 'Lombinho: Coloque molho, Lombinho, Mu�arela, Cebola e Azeitona -- Assar por 20 min', 'Bob'),
(4, 'Peperone: Coloque molho, Mu�arela, Peperone e Azeitona -- Assar por 20 min', 'Klebershoonw'),
(5, '4 Queijos: Coloque molho, Mu�arela, Provolone, Parmes�o, Gorgonzola -- Assar por 15 min', 'Jo�o');

INSERT INTO Pizzaiolo(id, nome)
VALUES
(1, 'Rom�rio'),
(2, 'Murilo Huff'),
(3, 'Ney'),
(4, 'Lebron'),
(5, 'Z� Ramalho');

SELECT * FROM Pizzaiolo

UPDATE Pizza SET descricao = 'Palmito, Mu�arela, Milho, Ovo, Cebola' WHERE id = 2

SELECT * FROM Pizza

DELETE FROM Pizza WHERE id = 4
DELETE FROM Receita WHERE id = 4

SELECT * FROM Pizza
SELECT * FROM Receita

UPDATE Pizza SET material_embalagem = 'Comum' WHERE id = 1
SELECT * FROM Pizza

INSERT INTO Ingredientes(id, nome)
	VALUES (14, 'Milho');

UPDATE Receita SET descricao = 'Portuguesa: Coloque molho, Mu�arela, Palmito, Milho, Ovo, Cebola e Azeitona -- Assar por 30 min' WHERE id = 2

SELECT * FROM Ingredientes
SELECT * FROM Receita