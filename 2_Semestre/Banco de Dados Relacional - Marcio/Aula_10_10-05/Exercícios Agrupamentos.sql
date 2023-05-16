use empresa;

SELECT * FROM produtos;
SELECT * FROM fornecedores;
SELECT * FROM marcas;



/*Selecione quantos produtos cada marca possui.*/
SELECT nome_marca AS Marca, COUNT(prod_id) AS Qnt_Produtos FROM
produtos JOIN marcas ON
produtos.marca_id = marcas.marca_id GROUP BY produtos.marca_id;


/*Selecione o preço médio dos produtos de cada marca.*/
SELECT nome_marca AS Marca, AVG(preco) FROM
produtos JOIN marcas ON
produtos.marca_id = marcas.marca_id GROUP BY produtos.marca_id;


Selecione a média dos preços e total em estoque dos produtos agrupados por marca.
	
	
	
Selecione quantos produtos estão cadastrados.
	
	
	
Selecione o preço médio dos produtos.
	
	
	
Selecione a média dos preços dos produtos em 2 grupos: perecíveis e não perecíveis.
	
	
	
Selecione a média dos preços dos produtos agrupados pelo nome do produto.
	
	
	
Selecione a média dos preços e total em estoque dos produtos.
	
	
	
Selecione o nome, marca e quantidade em estoque do produto mais caro.
	
	
	
Selecione os produtos com preço acima da média.
	
	
	
Selecione a quantidade de produtos de cada nacionalidade