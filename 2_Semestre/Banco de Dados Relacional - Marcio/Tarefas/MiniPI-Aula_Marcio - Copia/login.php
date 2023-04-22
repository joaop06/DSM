<?php

ob_start();

session_start(); // Inicia a sessão do usuário

require_once 'config.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email_login'];
    $senha = $_POST['senha_login'];

    // Verifica se o e-mail e senha digitados estão cadastrados para fazer o login
    $query = "SELECT id, nome FROM fatec_admin WHERE email='$email' AND senha=md5('$senha')";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);
        $_SESSION['id'] = $row['id'];
        $_SESSION['nome'] = $row['nome'];
        header('Location: dashboard.html'); // Redireciona para a página de dashboard
    } else {
        echo '<script>alert("Email ou senha incorretos!")</script>'; // Exibe um aletar caso não encontre os dados informados
        header("Location: index.html#paralogin"); // Redireciona novamente para tela de login
    }
}

ob_end_flush();

?>

