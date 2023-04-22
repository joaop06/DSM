<?php

header('Access-Control-Allow-Origin: *');

// Conexão com o Banco de Dados, passando as informações para conectar, como nome do banco, nome de usuário do banco e senha de acesso
$connect = new PDO("mysql:host=localhost;dbname=id20421000_mini_pi", "id20421000_joaop_mini_pi", "SenhaBD123@123");

$received_data = json_decode(file_get_contents("php://input"));

$data = array();

// Atribui a variável $query comandos de requisição puxando os alunos cadastrados no banco com determinado nome
if($received_data->query != '')
{
	$query = "
	SELECT * FROM fatec_professores 
	WHERE nome LIKE '%".$received_data->query."%' 
	OR endereco LIKE '%".$received_data->query."%'
	OR curso LIKE '%".$received_data->query."%'
	OR salario LIKE '%".$received_data->query."%'
	ORDER BY salario DESC
	";
}
// Caso contrário, atribui comandos para seleciona todos os alunos
else
{
	$query = "
	SELECT * FROM fatec_professores 
	ORDER BY salario DESC
	";
}

$statement = $connect->prepare($query);

// Executa a requisição
$statement->execute();

while($row = $statement->fetch(PDO::FETCH_ASSOC))
{
	$data[] = $row;
}
// Imprime o resultado
echo json_encode($data);

?>