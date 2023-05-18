use empresa;


CREATE PROCEDURE estoqueBaixo(estoque INT)
BEGIN
	SELECT produtos.*, marcas.nome_marca
    FROM produtos LEFT JOIN marcas
    ON marcas.marca_id = fk_estoque
    WHERE qtd_estoque < fk_estoque;
END

CALL estoqueBaixo 100;