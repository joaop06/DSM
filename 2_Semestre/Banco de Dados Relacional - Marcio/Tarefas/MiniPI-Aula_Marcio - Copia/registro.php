<?php

ob_start();

session_start(); // Inicia a sessão do usuário

require_once 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nome = $_POST['nome_cad'];
    $email = $_POST['email_cad'];
    $senha = $_POST['senha_cad'];

    // Verifica se já possui o e-mail cadastrado no banco
    $query = "SELECT * FROM fatec_admin WHERE email='$email'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) {
        echo "<script>alert('Este email já está em uso!');</script>";
    } else {
        // Insere o novo usuário no banco de dados
        $query = "INSERT INTO fatec_admin (nome, email, senha) VALUES ('$nome', '$email', md5('$senha'))";
        if (mysqli_query($conn, $query)) {
            echo '<script>alert("Usuário cadastrado com sucesso!")</script>'; // Exibe um alerta de sucesso ao cadastrar e redireciona para tela de login
            header("Location: index.html#paralogin");
        } else {
            echo '<script>alert("Erro ao cadastrar usuário!")</script>'; // Exibe um aletar caso não consiga cadastrar os dados
            header("Location: index.html#paracadastro"); // Redireciona novamente para tela de cadastro
        }
    }
}

ob_end_flush();


?>