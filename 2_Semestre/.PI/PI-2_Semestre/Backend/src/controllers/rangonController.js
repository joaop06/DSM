const connection = require("../data/data")

module.exports = class ScoreController {

    async productsAll(req, res) {
        try {
            connection.query("SELECT * FROM Produtos ORDER BY id DESC", function (err, rows) {
                res.status(200).json({
                    rows
                })
            })
        } catch (err) {
            console.log(err)
        }
    }

    async registrationUser(req, res) {
        try {
            const { nome_completo, celular, email, senha, cep, cidade, estado, endereco, numero } = req.body


            connection.query(`INSERT INTO Clientes VALUES (null, '${nome_completo}', ${celular}, '${email}','${senha}',${cep},'${cidade}', '${estado}', '${endereco}', ${numero})`, function (err) {
                if (err) {
                    console.error(err);
                    res.status(500).json({
                        message: "Erro ao inserir dados no banco de dados."
                    });
                } else {
                    res.status(200).json({
                        message: "Cadastro realizado!"
                    });
                }

            })

        } catch (err) {
            console.log(err)
        }
    }

    async loginUser(req, res) {
        try {
            const { email, senha } = req.body
            connection.query(`SELECT * FROM Clientes WHERE email = '${email}' AND senha = '${senha}'`, function (err, rows) {
                if (!err) {
                    if (rows.length == 1) {
                        res.status(200).json({
                            message: "Login realizado!",
                            data: rows
                        })
                    } else {
                        res.status(400).send("Login e/ou senha inválidos!")
                    }
                }

            })
        } catch (err) {
            console.log(err)
        }
    }

    async finalizarPedido(req, res) {
        try {
            const { id_cliente_fk, list_produtos, total } = req.body
            connection.query(`INSERT INTO Pedidos VALUES (null, ${id_cliente_fk}, '${list_produtos}', ${total}, 'Em Andamento')`, function (err) {
                res.status(200).json({
                    message: "Pedido Realizado!"
                })

            })
        } catch (err) {
            console.log(err)
        }
    }


    /* Pedidos */
    async pedidosCliente(req, res) {
        try {
            const { cliente, status_pedido } = req.query

            if(status_pedido == 'Em Andamento'){
                connection.query(`SELECT * FROM Pedidos WHERE id_cliente_fk = ${cliente} AND status_pedido = 'Em Andamento' ORDER BY num_pedido DESC`, function (err, rows) {
                    res.status(200).json({
                        message: "Pedidos Em Andamento!",
                        data: rows
                    })
                })
            } else if(status_pedido == 'Finalizado' || status_pedido == 'Cancelado'){
                connection.query(`SELECT * FROM Pedidos WHERE id_cliente_fk = ${cliente} AND status_pedido IN ('Finalizado', 'Cancelado')`, function (err, rows) {
                    res.status(200).json({
                        message: "Pedidos Finalizado / Cancelados!",
                        data: rows
                    })
                })
            } else{
                connection.query(`SELECT * FROM Pedidos WHERE id_cliente_fk = ${cliente} ORDER BY num_pedido DESC`, function (err, rows) {
                    res.status(200).json({
                        message: "Todos os Pedidos!",
                        data: rows
                    })
                })
            }



            
        } catch (err) {
            console.log(err)
        }
    }

    async cancelarPedido(req, res) {
        try {
            const { num_pedido } = req.body
            connection.query(`UPDATE Pedidos SET status_pedido = 'Cancelado' WHERE num_pedido = ${num_pedido}`, function (err) {
                if (!err) {
                    res.status(200).send("Pedido cancelado com sucesso!")
                }
            })
        } catch (err) {
            console.log(err)
        }
    }


    /* Geral */
    async findUserLogado(req, res) {
        try {
            const { id } = req.query
            connection.query(`SELECT * FROM Clientes WHERE id = ${id}`, function (err, rows) {
                if (!err) {
                    res.status(200).json({
                        message: "Cliente encontrado!",
                        data: rows
                    })

                } else {
                    res.status(500).json({
                        message: "Erro ao buscar o cliente!"
                    })
                }
            })

        } catch (err) {

        }
    }


    /* Perfil */
    async dataUser(req, res) {
        try {
            const { id } = req.body
            connection.query(`SELECT * FROM Clientes WHERE id = ${id}`, function (err, rows) {
                res.status(200).json({
                    message: "Cliente Encontrado!",
                    data: rows
                })
            })
        } catch (err) {
            console.log(err)
        }
    }


    async updateDataUser(req, res) {
        try {
            const { id, nome_completo, celular, email, cep, cidade, estado, endereco, numero } = req.body
            connection.query(`
            UPDATE Clientes SET nome_completo = '${nome_completo}',
            celular = '${parseInt(celular)}',
            email = '${email}',
            cep = '${parseInt(cep)}',
            cidade = '${cidade}',
            estado = '${estado}',
            endereco = '${endereco}',
            numero = '${parseInt(numero)}' WHERE id = '${parseInt(id)}'`,
                function (err, rows) {
                    res.status(200).json({
                        message: "Dados do Cliente Atualizados!",
                        data: rows
                    })
                })
        } catch (err) {
            console.log(err)
        }

    }


    /* Admin */
    async findItensAdmin(req, res) {
        try {
            connection.query('SELECT * FROM Produtos ORDER BY id DESC', function (err, rows) {
                res.status(200).json({
                    data: rows
                })
            })
        } catch (err) {
            console.log(err)
        }
    }


    async updateProduct(req, res) {
        try {
            const { nome, descricao, preco, id } = req.body
            connection.query(`UPDATE Produtos SET nome = '${nome}', descricao = '${descricao}', preco = ${parseFloat(preco)} WHERE id = ${parseInt(id)}`, function (err) {
                if (!err) {
                    res.status(200).send("Produto Atualizado!")
                }
            })
        } catch (err) {
            console.log(err)
        }
    }

    async createProduct(req, res) {
        try {
            const { nome, descricao, preco, tipo } = req.body;
            let imagem = ''
            if (tipo == 'Lanche') {
                imagem = 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Hamburguer.jpg?raw=true'
            } else if (tipo == 'Pizza') {
                imagem = 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Pizza.jpg?raw=true'
            } else {
                imagem = 'https://github.com/joaop06/imagens-PI-2_Semestre/blob/main/Por%C3%A7%C3%B5es.png?raw=true'
            }
            connection.query(`INSERT INTO Produtos (nome, descricao, preco, tipo, imagem) VALUES ('${nome}', '${descricao}', ${parseFloat(preco)}, '${tipo}', '${imagem}')`, function (err) {
                if (!err) {
                    res.status(200).send("Produto Atualizado!");
                }
            });
        } catch (err) {
            console.log(err);
        }
    }

    async deleteProduct(req, res) {
        try {
            const { id } = req.body
            connection.query(`DELETE FROM Produtos WHERE id = ${parseInt(id)}`, function (err) {
                if (!err) {
                    res.status(200).send("Produto deletado!")
                }
            })
        } catch (err) {
            console.log(err)
        }
    }

    async loginUserAdm(req, res) {
        try {
            const { email, password } = req.body
            connection.query(`SELECT * FROM Admin WHERE email = '${email}' AND senha = '${password}'`, function (err, rows) {
                if (!err) {
                    if (rows.length == 1) {
                        res.status(200).json({
                            message: "Login realizado!",
                            data: rows
                        })
                    } else {
                        res.status(400).send("Login e/ou senha inválidos!")
                    }
                }

            })
        } catch (err) {
            console.log(err)
        }
    }

    /* Pedidos Admin */
    async pedidosGerais(req, res) {
        try {
            connection.query(`SELECT Pedidos.*, Clientes.nome_completo FROM Pedidos INNER JOIN Clientes ON Pedidos.id_cliente_fk = Clientes.id`, function (err, rows) {
                res.status(200).json({
                    data: rows
                })
            })
        } catch (err) {
            console.log(err)
        }
    }

    async alteraStatusPedido(req, res) {
        try {
            const { num_pedido, status_pedido } = req.query
            connection.query(`UPDATE Pedidos SET status_pedido = '${status_pedido}' WHERE num_pedido = ${num_pedido}`, function (err) {
                if (!err) {
                    res.status(200).send("Status do pedido atualizado!")
                }
            })
        } catch (err) {
            console.log(err)
        }
    }

}
