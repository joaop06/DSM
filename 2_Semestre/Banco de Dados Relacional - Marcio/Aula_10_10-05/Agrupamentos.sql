use petshop_03_05;

SELECT * FROM Animais;


/*   EXEMPLOS   */
SELECT cor, COUNT(id)
FROM Animais
GROUP BY cor;


SELECT cor, AVG(peso)
FROM Animais
GROUP BY cor
HAVING AVG(peso) > 15;


SELECT cor, sum(peso)
FROM Animais
GROUP BY cor;


SELECT MIN(peso) FROM Animais;
SELECT MIN(peso) AS Menor_Peso FROM Animais;


SELECT MAX(peso) FROM Animais;
SELECT MAX(peso) AS Maior_Peso FROM Animais;


SELECT * FROM Animais LIMIT 5;

SELECT * FROM 