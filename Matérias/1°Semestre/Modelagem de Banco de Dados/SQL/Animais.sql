CREATE DATABASE Animais;
USE Animais;

CREATE TABLE animais(
	animal_id INTEGER PRIMARY KEY IDENTITY,
	nome_animal VARCHAR(50) not null,
	data_nasc DATE not null,
	peso DECIMAL(10, 2),
	cor VARCHAR(50)
);
INSERT INTO animais VALUES ('Ágata', '2015-04-09', 13.9, 'branco');
INSERT INTO animais VALUES ('Félix', '2016-06-06', 14.3, 'preto');
INSERT INTO animais VALUES ('Tom', '2013-02-08', 11.2, 'azul');
INSERT INTO animais VALUES ('Garfield', '2015-07-06', 17.1, 'laranja');
INSERT INTO animais VALUES ('Frajola', '2013-08-01', 13.7, 'preto');
INSERT INTO animais VALUES ('Manda-chuva', '2012-02-03', 12.3, 'amarelo');
INSERT INTO animais VALUES ('Snowball', '2014-04-06', 13.2, 'preto');
INSERT INTO animais VALUES ('Ágata', '2015-08-03', 11.9, 'azul');
INSERT INTO animais VALUES ('Ágata', '2016-03-04', 18.6, 'roxo');
INSERT INTO animais VALUES ('Gato de Botas', '2012-12-10', 11.6, 'amarelo');
INSERT INTO animais VALUES ('Bola de pelo', '2020-04-06', 11.6, 'amarelo');
INSERT INTO animais VALUES ('Milu', '2013-02-04', 17.9, 'branco');
INSERT INTO animais VALUES ('Pluto', '2012-01-03', 12.3, 'amarelo');
INSERT INTO animais VALUES ('Pateta', '2015-05-01', 17.7, 'preto');
INSERT INTO animais VALUES ('Snoopy', '2013-07-02', 18.2, 'branco');
INSERT INTO animais VALUES ('bidu', '2012-09-08', 12.4, 'azul');
INSERT INTO animais VALUES ('Dum Dum', '2015-04-06', 11.2, 'laranja');
INSERT INTO animais VALUES ('Muttley', '2011-02-03', 14.3, 'laranja');
INSERT INTO animais VALUES ('Scooby', '2012-01-02', 19.9, 'marrom');
INSERT INTO animais VALUES ('Rufus', '2014-04-05', 19.7, 'branco');
INSERT INTO animais VALUES ('Costelinha', '2016-05-02', 13.4, 'branco');
INSERT INTO animais VALUES ('Coragem', '2013-07-08', 12.2, 'vermelho');
INSERT INTO animais VALUES ('Jake', '2012-02-07', 11.6, 'vermelho');
INSERT INTO animais VALUES ('K900', '2012-11-25', 11.6, 'amarelo');

SELECT * FROM animais;

SELECT * FROM animais WHERE peso > 15

SELECT * FROM animais WHERE peso < 15

SELECT * FROM animais WHERE cor = 'laranja'

SELECT * FROM animais WHERE data_nasc > '2015-01-01'

SELECT * FROM animais WHERE cor != 'vermelho' and cor != 'laranja'

SELECT * FROM animais WHERE peso >= 10 and cor = 'branco'

SELECT * FROM animais WHERE cor = 'amarelo' or cor = 'azul'

INSERT INTO animais VALUES ('Jerry', '2010-02-04', 06.6, 'laranja');
INSERT INTO animais VALUES ('Ligeirinho', '2011-05-03', 04.4, 'amarelo');
INSERT INTO animais VALUES ('Mikey', '2012-07-01', 02.2, 'preto');
INSERT INTO animais VALUES ('Minie', '2013-09-03', 03.2, 'preta');
INSERT INTO animais VALUES ('Topo Gigio', '2016-06-08', 05.5, 'amarelo');
INSERT INTO animais VALUES ('Bafo de Onça', '2016-01-08', 15.5, 'amarelo');
INSERT INTO animais VALUES ('Susan Murphy', '2021-02-08', 03.5, 'vermelho');
INSERT INTO animais VALUES ('Insectosauro', '2016-01-08', 35.8, 'amarelo');
INSERT INTO animais VALUES ('Gallaxhar', '2020-06-08', 05.5, 'azul');
INSERT INTO animais VALUES ('Hathaway', '2019-03-08', 85.5, 'roxo');
INSERT INTO animais VALUES ('Tutubarão', '2010-02-06', 101.9 , 'branca');
INSERT INTO animais VALUES ('Prof. Pardal', '2012-04-04', 1.7   , 'amarelo');
INSERT INTO animais VALUES ('Mobie', '2014-05-02', 5069.4, 'branca');
INSERT INTO animais VALUES ('Batman', '2013-07-01', 96.1  , 'preto');

SELECT * FROM animais WHERE cor = 'azul' and peso = 14

SELECT * FROM animais WHERE cor in ('branco', 'azul', 'verde')

SELECT * FROM animais WHERE peso between 20 and 25;

SELECT * FROM animais ORDER BY peso

SELECT * FROM animais ORDER BY nome_animal

SELECT * FROM animais
WHERE cor in ('branco', 'preto', 'marrom')
	ORDER BY peso;

SELECT * FROM animais WHERE cor in ('branco', 'preto', 'marrom') ORDER BY peso DESC;

SELECT * FROM animais ORDER BY nome_animal ASC;

SELECT * FROM animais ORDER BY nome_animal DESC;

--1.Selecione todos os animais​
SELECT * FROM animais

--2.Selecione todos os animais que pesam menos que 50
SELECT * FROM animais WHERE peso < 50

--3.Selecione todos nasceram entre fevereiro e dezembro de 2015
SELECT * FROM animais WHERE data_nasc between '2015-02-01' and '2015-12-31'

--4.Selecione todos os animais brancos que pesam menos que 20​
SELECT * FROM animais WHERE cor = 'branco' and peso < 20

--5.Selecione nome, cor e peso de todos cujo nome comece com ’B’​
SELECT nome_animal, cor, peso FROM animais WHERE nome_animal like 'B%'

--6.Selecione nome, cor e peso de todos com cor vermelha, amarela, marrom e laranja​
SELECT nome_animal, cor, peso FROM animais	WHERE cor in ('vermelho', 'amarelo', 'marrom', 'laranja')

--7.Selecione nome, cor, data de nascimento e peso de todos ordenados pelos mais jovens​
SELECT nome_animal, cor, data_nasc, peso FROM animais ORDER BY data_nasc

--8.Selecione todos os animais cujo nome comece com 'C' e não sejam brancos​
SELECT * FROM animais WHERE nome_animal like 'C%'

--9.Selecione todos os animais cujo nome contenha 'ba'​
SELECT * FROM animais WHERE nome_animal like '%ba%'

--10.Selecione todos os animais com peso entre 24.7 e 18.1​
SELECT * FROM animais WHERE peso between 18.1 and 24.7;

--11.Selecione todos os animais que o peso não seja maior que 30, com cor amarelo ou roxo e nascidos depois de 2012​
SELECT * FROM animais WHERE peso < 30 and cor in ('amarelo', 'roxo') and data_nasc > '2012-01-01'
