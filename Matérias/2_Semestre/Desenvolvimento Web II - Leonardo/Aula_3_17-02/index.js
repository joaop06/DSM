const express = require("express")

const app = express()

var porta = 8080 // Atribuindo o valor da porta a uma variável
app.listen(porta, () => {console.log(`O servidor está ativo na porta ${porta}`)}) // Colocando o valor da porta no localhost


let nome = "João Pedro"
let cor = "red"
app.get("/", (req, res) => {
    res.send(`<h1 style="color: ${cor}" >Testando minha API! Olá ${nome}!</h1>`)
})

app.post("/getHTML", (req, res) => {
    const {nome} = req.body
    console.log(`Olá ${nome}!`)
})