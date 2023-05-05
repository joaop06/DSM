use petshop_03_05;


/*Selecione o nome e a espécie de todos os animais*/
SELECT animais.nome, especies.nome FROM
	Animais INNER JOIN Especies on
    Animais.especie_id = Especies.id;


/*Selecione todos os gatos laranja*/
SELECT animais.nome AS Nome, especies.nome AS Especie, animais.cor FROM
	Animais INNER JOIN Especies on
    Animais.especie_id = especies.id WHERE especies.nome = 'gato' and animais.cor = 'laranja';

	
/*Selecione todos os cachorros da cor amarelo*/
SELECT Animais.nome


/*Selecione todos os animais aquáticos que pesam mais que 70 Kg*/
	
	
	
/*Selecione todos os herbívoro ordenados pelos mais pesados*/
	
	
	
/*Selecione todos os carnívoro que são pretos e brancos*/
	
	
	
/*Selecione todos os onívoros que nasceram antes de 2013*/
	
	
	
/*Selecione todos os mamiferos que pesam mais que 10 quilos e são marrons ou azul*/
	
	
	
/*(Desafio) Selecione a quantidade total de animais*/
	
	
	
(Desafio) Se somarmos os peso de todos os gatos, qual será o resultado?