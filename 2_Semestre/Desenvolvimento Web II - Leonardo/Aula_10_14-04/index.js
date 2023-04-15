const express = require("express");

const app = express();

app.use(express.json())

app.listen(8080, () => {
    console.log("Ativo na porta 8080");
})

app.get('/includeAluno', (req, res) => {

    res.send(`<h1>Olá! Bem vindo!</h1>`)
})

app.post('/includeAluno', (req, res) => {
    const {nome} = req.body;

    res.send(`<h1>Olá ${nome}! Bem vindo!</h1>`)
})