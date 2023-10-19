require('dotenv').config()
const express = require('express')
const app = express()

// Servidor escutando na porta 3000 ou 4000
app.listen(process.env.SERVER_PORT || 4000, () => {
    console.log(`Server is running on port ${process.env.SERVER_PORT || 4000}`)
})


// Rota inicial, Hello Word
app.get('/', (req, res) => {
    res.send('Hello World!')
})


// Rota /curso
app.get('/curso', (req, res) => {
    console.log('Get na rota "/curso"')
    res.send('Get na rota "/curso"')
})