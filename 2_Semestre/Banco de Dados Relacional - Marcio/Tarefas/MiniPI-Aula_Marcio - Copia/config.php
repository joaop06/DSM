<?php

$host = "localhost"; // nome do servidor MySQL
$user = "id20421000_joaop_mini_pi"; // Nome de usuário do banco
$pass = "SenhaBD123@123"; // Senha de acesso do banco
$dbname = "id20421000_mini_pi"; // Nome do Banco de Dados

// Faz a conexão com o banco passando as variáveis com as informções necessárias
$conn = mysqli_connect($host, $user, $pass, $dbname);

// Caso tenha erro para conectar exibe a msg
if (!$conn) {
    die("Falha na conexão: " . mysqli_connect_error());
}
