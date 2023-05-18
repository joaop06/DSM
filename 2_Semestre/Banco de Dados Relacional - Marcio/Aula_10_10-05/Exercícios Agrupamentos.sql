use empresa;

SELECT * FROM produtos;
SELECT * FROM fornecedores;
SELECT * FROM marcas;



/* 1- Selecione quantos produtos cada marca possui.*/
SELECT nome_marca AS Marca, COUNT(prod_id) AS Qnt_Produtos FROM
produtos JOIN marcas ON
produtos.marca_id = marcas.marca_id GROUP BY produtos.marca_id;


/* 2- Selecione o preço médio dos produtos de cada marca.*/
SELECT nome_marca AS Marca, AVG(valor) AS Média FROM
produtos JOIN marcas ON
produtos.marca_id = marcas.marca_id GROUP BY produtos.marca_id;


/* 3- Selecione a média dos preços e total em estoque dos produtos agrupados por marca.*/
SELECT AVG(valor) AS MédiaPreços, SUM(qtd_estoque) AS QtdEstoque, nome_marca AS Marca FROM
produtos JOIN marcas ON
produtos.marca_id = marcas.marca_id GROUP BY produtos.marca_id;

	
/* 4- Selecione quantos produtos estão cadastrados.*/
SELECT COUNT(prod_id) AS QuantProdutos FROM produtos;
	
	
/* 5- Selecione o preço médio dos produtos.*/
SELECT AVG(valor) AS MédiaPreço FROM produtos;

	
/* 6- Selecione a média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis.*/
SELECT AVG(valor) AS MédiaPreço, perecivel AS Perecível FROM produtos GROUP BY perecivel;
	
	
/* 7- Selecione a média dos preços dos produtos agrupados pelo nome do produto.*/
SELECT nome_prod AS Produto, AVG(valor) AS MédiaPreço FROM produtos GROUP BY nome_prod;
	
	
/* 8- Selecione a média dos preços e total em estoque dos produtos.*/
SELECT nome_prod AS Produto, AVG(valor) AS MédiaPreço, SUM(qtd_estoque) AS Qtd_Estoque FROM produtos GROUP BY nome_prod;
	
	
/* 9- Selecione o nome, marca e quantidade em estoque do produto mais caro.*/
SELECT nome_prod AS Produto, nome_marca AS Marca, SUM(qtd_estoque) AS Qtd_Estoque, valor AS Preço FROM
produtos JOIN marcas ON
produtos.marca_id = marcas.marca_id GROUP BY nome_prod, nome_marca, valor HAVING produtos.valor = (SELECT MAX(valor) FROM produtos);


/* 10- Selecione os produtos com preço acima da média.*/
SELECT nome_prod AS Produto, valor AS Preço FROM produtos WHERE valor > (SELECT AVG(valor) FROM produtos);

	
/* 11- Selecione a quantidade de produtos de cada nacionalidade*/
SELECT origem AS Nacionalidade, SUM(qtd_estoque) AS Qtd_Estoque FROM produtos JOIN marcas ON
produtos.marca_id = marcas.marca_id GROUP BY origem;

