// Chamar a biblioteca do express
const express = require("express");
const { route } = require("express/lib/application");

const app = express()

//Chamando a abertura do meu serviço
//Criação do servidor express
app.listen(8080)

//Criação da primeira rota /
app.get("/", () => {
    console.log("Olá, Mundo!")
})