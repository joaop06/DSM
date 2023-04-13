const express = require("express");
const app = express();
app.use(express.json());

app.listen(1010, () => {
    console.log("Servidor local ativo! Porta: 1010")
})

let tarefas = [];

app.get('/tarefas', () => {
    console.log("Rota raiz ok!")
})

app.get('/getHome', (req, res) => {
    const {titulo} = req.body;
    console.log(`${titulo}`)
})