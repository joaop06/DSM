const express = require("express")
const app = express()
const pool = require("./data/data")

app.use(express.json());

// Inicialização do servidor local
app.listen(8080, () => {
    console.log("Servidor local ativo! Porta: 8080")
})

app.get("/getUsers", async (req, res) => {
    try{
        const client = await pool.connect()
        const {rows} = await client.query("SELECT * FROM Users")
        console.table(rows)
        res.status(200).send(rows)
    } catch {
        console.error(error)
        res.status(500).send("Erro de conexão com o servidor")
    }
})