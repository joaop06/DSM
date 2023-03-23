<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD Vue.js</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <style>
        .modal-mask{
            position: fixed;
            z-index: 9998;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: table;
            transition: opacity 0.3s ease;
        }

        .modal-wrapper{
            display: table-cell;
            vertical-align: middle;
        }

    </style>
</head>
<body>
    <div class="container" id="crudApp">
        <br />
        <h3 align="center">
            <img src="https://site.fatecfranca.edu.br/images/logo-fatec-franca-15-anos.png" width="50%" height="50%" alt="logo fatec"><br /><br />
            <strong>Cadastro de Alunos</strong>
        </h3>
        <br />

        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-md-6">
                        <h3 class="panel-title">Alunos</h3>
                    </div>
                    <div class="col-md-6" align="right">
                        <input type="button">
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>