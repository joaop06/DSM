use petshop_03_05;

SELECT * FROM Animais;
SELECT * FROM Especies;



/*Altere o nome do Pateta para Goofy;​*/
SELECT * FROM Animais WHERE nome = 'pateta';
UPDATE Animais SET nome = 'Goofy' WHERE nome = 'pateta';
SELECT * FROM Animais WHERE nome = 'Goofy';


/*Altere o peso do Garfield para 10 kilogramas;​*/
SELECT * FROM Animais WHERE nome = 'Garfield';
UPDATE Animais SET peso = 10 WHERE nome = 'Garfield';
	
	
/*Altere a cor de todososgatos para laranja*/
	
	
	
/*Crie um campo altura para os animais;​*/
SELECT * FROM Animais;
ALTER TABLE Animais ADD altura DECIMAL(5, 2);

	
	
/*Crie um campo observação para osanimais;​*/
SELECT * FROM Animais;
ALTER TABLE Animais ADD observacao TEXT;


/*Remova todos os animais que pesammais que 200 kilogramas.​*/
SELECT * FROM Animais WHERE peso > 200;
DELETE FROM Animais WHERE peso > 200;
	
SET SQL_SAFE_UPDATES = 0;

/*Remova todos os animais que o nome inicie com a letra ‘C’.*/
SELECT * FROM Animais WHERE nome LIKE 'C%';
DELETE FROM Animais WHERE nome LIKE 'C%';

/*Remova o campo cor dos animais*/
SELECT * FROM Animais;
ALTER TABLE Animais DROP COLUMN cor;

/*Aumente o tamanho do campo nome dos animais para 80 caracteres*/
ALTER TABLE Animais ALTER COLUMN nome varchar(80);
SELECT * FROM INFORMATION_SCHEMA.COLUMNS;
	
	
/*Remova todos os gatos e cachorros.​*/
SELECT * FROM Animais JOIN Especies ON
Animais.id = Especies.id WHERE
Especies.nome in ('gato', 'cachorro');

DELETE FROM Animais JOIN Especies ON
Animais.id = Especies.id WHERE
Especies.nome in ('gato', 'cachorro'); 


/*Remova o campo data de nascimento dos animais​*/



/*Remova a tabelaespecies.​*/



/*Remova todos os animais.​*/


