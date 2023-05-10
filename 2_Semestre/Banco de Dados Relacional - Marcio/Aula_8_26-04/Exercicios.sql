use petshop_03_05;


SELECT * FROM Animais;
SELECT * FROM Especies;

/*Selecione o nome e a espécie de todos os animais*/
SELECT * FROM
	Animais JOIN Especies on
    Animais.especie_id = Especies.id;


/*Selecione todos os gatos laranja*/
SELECT animais.nome AS Nome, especies.nome AS Especie, animais.cor FROM
	Animais INNER JOIN Especies on
    Animais.especie_id = especies.id WHERE especies.nome = 'gato' and animais.cor = 'laranja';

	
/*Selecione todos os cachorros da cor amarelo*/
SELECT Animais.nome AS Nome, especies.nome AS Espécie, Animais.cor AS Cor FROM
	Animais JOIN Especies ON
    Animais.especie_id = Especies.id WHERE Animais.cor = 'amarelo' and Especies.nome = 'cachorro';


/*Selecione todos os animais aquáticos que pesam mais que 70 Kg*/
SELECT Animais.nome AS Nome, especies.nome AS Espécie, animais.cor AS Cor FROM
	Animais JOIN Especies ON
    Animais.especie_id = Especies.id WHERE Animais.peso > 70 AND Animais.cor = 'branca';


/*Selecione todos os herbívoro ordenados pelos mais pesados*/
SELECT Animais.nome AS Nome, especies.alimentacao AS Alimentação, Animais.peso AS Peso FROM
	Animais JOIN Especies ON
	Animais.especie_id = Especies.id WHERE especies.alimentacao = 'herbívoro' ORDER BY animais.peso DESC;

	
/*Selecione todos os carnívoro que são pretos e brancos*/
SELECT Animais.nome AS Nome, Especies.alimentacao AS Alimentação, animais.cor AS Cor FROM
	Animais JOIN Especies ON
    Animais.especie_id = Especies.id WHERE especies.alimentacao = 'carnívoro' AND ( Animais.cor = 'branco' OR Animais.cor = 'branca' OR Animais.cor = 'preto');
	
	
/*Selecione todos os onívoros que nasceram antes de 2013*/
SELECT Animais.nome AS Nome, especies.nome AS Espécie, Animais.data_nasc AS DataNasc FROM
Animais INNER JOIN Especies ON
Animais.especie_id = especies.id WHERE especies.alimentacao = 'onívoro' AND YEAR(animais.data_nasc) < 2013;
	
	
/*Selecione todos os mamiferos que pesam mais que 10 quilos e são marrons ou azul*/
SELECT Animais.nome AS Nome, Especies.nome AS Espécie FROM
	Animais JOIN Espécies ON
    Animais.especie_id = Especies.id WHERE Animais.peso > 10 AND Animais.cor = 'marrom' OR Animais


/*(Desafio) Selecione a quantidade total de animais*/
	
	
	
/*(Desafio) Se somarmos os peso de todos os gatos, qual será o resultado?*/