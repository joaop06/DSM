const express = require("express")
const router = express.Router()
const rangonController = require("../controllers/rangonController")
this.rangonController = new rangonController()





/* Cliente */
    /* Home */
    router.get('/', this.rangonController.productsAll)
    router.get('/Home', this.rangonController.productsAll)
    router.post('/Home/finalizarpedido', this.rangonController.finalizarPedido)


    /* Cadastro */
    router.post('/cadastro', this.rangonController.registrationUser)


    /* Login */
    router.post('/login', this.rangonController.loginUser)


    /* Pedidos */
    router.post('/pedidos', this.rangonController.pedidosCliente)


    /* Perfil */
    router.get('/data-user', this.rangonController.dataUser)
    router.put('/update-data-user', this.rangonController.updateDataUser)


    /* Geral */
    router.get('/find-user', this.rangonController.findUserLogado)


/* Admin */

    /* Admin */

    router.get('/admin-itens', this.rangonController.findItensAdmin)

    router.put('/update-product', this.rangonController.updateProduct)

    router.post('/create-product', this.rangonController.createProduct)

    router.delete('/delete-product', this.rangonController.deleteProduct)

    router.get('/pedidos-gerais', this.rangonController.pedidosGerais)

    router.put('/altera-status-pedido', this.rangonController.alteraStatusPedido)

    /* Login */
    router.post('/loginAdm', this.rangonController.loginUserAdm)



module.exports = router