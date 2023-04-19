const express = require("express");

const app = express();

app.use(express.json())

app.listen(8080, () => {
    console.log("Ativo na porta 8080");
});


let Alunos = [
    {
        "id": 1,
        "nome": "João"
    },
    {
        "id": 2,
        "nome": "João Pedro"
    },
    {
        "id": 3,
        "nome": "Pedro"
    },
    {
        "id": 4,
        "nome": "afsdfasdfsdafsd"
    },
    {
        "id": 5,
        "nome": "Alface"
    },
    {
        "id": 6,
        "nome": "teclado"
    },
    {
        "id": 7,
        "nome": "corrigindo prova"
    },
    {
        "id": 8,
        "nome": "prova do jorge"
    },
    {
        "id": 9,
        "nome": "mouse"
    },
    {
        "id": 10,
        "nome": "caneta"
    },
    {
        "id": 11,
        "nome": "nome aleatorio"
    },
];


app.post('/Alunos', (req, res) => {
    const {nome} = req.body;
    Alunos.push({
        id: Alunos.length + 1,
        nome: nome
    })
    res.json(Alunos)
})


app.get('/Alunos/:id', (req, res) => {
    const index = Alunos.find(item => item.id == req.params.id);
    //const nome_aluno = index.id
    if (index){
        //res.send(`<h1>O aluno ${nome_aluno} foi encontrado.</h1>`)
        res.json({
            aluno: {...index}
        })
    } else {
        res.send("Aluno não encontrado.")
    }
});


app.get('/Alunos', (req, res) => {
    res.json({
        Alunos: {...Alunos}
    })
});

app.put('Alunos/:id', (req, res) => {
    const {id} = req.params;
    const {nome} = req.body;

    const aluno = Alunos.find(item => item.id == req.params.id);
    aluno.nome = nome

    res.json({...aluno})
});

