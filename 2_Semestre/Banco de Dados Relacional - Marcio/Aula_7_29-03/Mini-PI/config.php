<?php

$host = "localhost"; // nome do servidor MySQL
$user = "id20421000_joaop_mini_pi"; // usuário do MySQL
$pass = "SenhaBD123@123"; // senha do MySQL
$dbname = "id20421000_mini_pi"; // nome do banco de dados

// Conexão com o banco de dados MySQL
$conn = mysqli_connect($host, $user, $pass, $dbname);

// Verifica se houve erro na conexão
if (!$conn) {
    die("Falha na conexão: " . mysqli_connect_error());
}
