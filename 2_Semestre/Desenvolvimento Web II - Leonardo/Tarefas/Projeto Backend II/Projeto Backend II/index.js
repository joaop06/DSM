const express = require("express");
const jwt = require("jsonwebtoken");
const pool = require("./data/data")

const app = express();

app.use(express.json());

app.listen(8080, () => {
  console.log("O servidor está ativo na porta 8080");
});

const segredo = "MeuSegredo";


function verifyToken(req, res, next) {
  const token = req.headers.authorization;

  if (!token) {
    return res.status(401).json({
      message: "Token não fornecido!",
    });
  }

  try {
    const decodificado = jwt.verify(token, segredo);
    req.user = decodificado;
    next();
  } catch (err) {
    res.status(403).json({
      message: "Token inválido!",
    });
  }
}




const usuarios = [
  {
    id: 1,
    name: "joao",
    password: "123"
  },
  {
    id: 2,
    name: "maria",
    password: "123"
  }
]



/*  app.get("/") -> "Home Page"  */
app.get("/", (req, res) => {
  res.send("Home Page");
});


/*  app.post("/login") -> Chamada login  */
app.post("/login", (req, res) => {
  const { name, password } = req.body;

  const usuario = usuarios.find(usuario => usuario.name === name && usuario.password === password)

  if (!usuario) {
    return res.status(401).json({
      message: "Nome de usuário ou senha incorretos!",
    });
  }

  const token = jwt.sign(usuario, segredo);
  res.status(200).json({
    token,
  });
});



/*  app.get("/users") -> Mostrar todos os usuários  */
app.get("/users", verifyToken, async (req, res) => {

  try{
    const client = await pool.connect()
    const {rows} = await client.query("SELECT * FROM users ORDER BY name")
    res.status(200).send(rows)

  } catch(error){
    res.status(500).send("Erro de conexão com o banco de dados")
  }
});


/*  app.get("/users") -> Mostrar o usuário buscado pelo nome  */
app.get("/users/:name", verifyToken, async (req, res) => {

  try{
    const {name} = req.params;
    const client = await pool.connect()
    const {rows} = await client.query(`SELECT * FROM users WHERE name LIKE '%${name}%'`)
    res.status(200).send(rows)

  } catch(error){
    res.status(500).send("Erro de conexão com o banco de dados")
  }
});


/*  app.post("/users") -> Criar um usuário  */
app.post("/users", async (req, res) => {

  try{
    const { name, password } = req.body;
    const client = await pool.connect()
    const user = await client.query(`INSERT INTO users (name, password) VALUES ('${name}', '${password}')`)

    res.status(201).send(`Olá, ${name}! Seu cadastro foi realizado com sucesso!`)

  } catch (error){
    res.status(500).send("Erro ao criar o usuário")
  }
});


/*  app.put("/users/:id") -> Atualizar um usuário  */
app.put("/users/:id", async (req, res) => {

  try{ 
    const {id} = req.params;
    const {name, password} = req.body;
    const client = await pool.connect()
    const user = await client.query(`UPDATE users SET name = '${name}', password = '${password}' WHERE id = ${id}`)

    res.status(200).send("Cadastro alterado com sucesso!")

  } catch (error){
    console.log(error)
    res.status(500).send("Erro ao atualizar o usuário")
  }
});


/*  app.delete("/users/:id") -> deletar um usuário  */
app.delete("/users/:id", async (req, res) => {
  
  try{
    const {id} = req.params;
    const client = await pool.connect();
    const user = await client.query(`DELETE FROM users WHERE id = ${id}`)

    res.status(200).send("Usuário deletado com sucesso!")

  } catch(error){
    res.status(500).send("Erro ao deletar o usuário")
  }
});


/*  app.delete("/usersAllUsers/") -> deletar um usuário  */
app.delete("/usersAllUsers", async (req, res) => {
  
  try{
    const client = await pool.connect();
    const user = await client.query("DELETE FROM users")

    res.status(200).send("Todos os usuários foram deletados")

  } catch(error){
    res.status(500).send("Erro ao deletar os usuários")
  }
});
