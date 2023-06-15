const express = require("express");
const jwt = require("jsonwebtoken")
const app = express()
app.listen(8080, () => {
    console.log("Servidor ativo na porta 8080");
});

const segredo = 'MeuSegredo';

function verifyToken(req, res, next) {
    const token = req.headers.authorization;
    if (!token) {
        return res.status(401).json({ message: 'Token não fornecido'})
    }
    try {
        const decodificar = jwt.verify(token, segredo)

        req.user = decodificar;

        next()
    } catch (err) {
        res.status(403).json({message: 'Token invalido'})
    }
}

app.post("/login", (req, res) => {
    const user = {
        id: 123,
        name: 'Leonardo',
        email: 'Leonardo@example.com'
    };

    const token = jwt.sign(user, segredo);

    res.json({ token });
})

app.get('/protegido', verifyToken, (req, res) => {
    const {id, name, email} = req.user;

    res.json({id, name, email})
})