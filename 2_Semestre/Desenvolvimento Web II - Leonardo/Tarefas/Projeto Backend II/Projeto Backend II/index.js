const express = require("express");
const jwt = require("jsonwebtoken");

const app = express();

app.use(express.json());

app.listen(8080, () => {
  console.log("O servidor está ativo na porta 8080");
});

const segredo = "MeuSegredo";
const usuarios = [
    {
        id: 1,
        name: "jao",
        password: "123"
    }
];

function verifyToken(req, res, next) {
  const token = req.headers.authorization;

  if (!token) {
    res.status(401).json({
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

app.get("/", (req, res) => {
  res.send("Home Page");
});

app.post("/login", (req, res) => {
  const { name, password } = req.body;

  const usuario = usuarios.find(
    (usuario) => usuario.name === name && usuario.password === password
  );

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

app.get("/users", verifyToken, (req, res) => {
  res.status(200).json({
    usuarios,
  });
});

app.post("/users", (req, res) => {
  const { name, password } = req.body;
  const id = usuarios.length + 1;
  const usuario = {
    id,
    name,
    password,
  };
  usuarios.push(usuario);

  res.status(201).json({
    message: "Usuário criado com sucesso!",
    usuario,
  });
});

app.put("/users/:id", (req, res) => {
  const { id } = req.params;
  const { name, password } = req.body;

  const usuario = usuarios.find((usuario) => usuario.id == id);

  if (!usuario) {
    return res.status(404).json({
      message: "Usuário não encontrado!",
    });
  }

  usuario.name = name || usuario.name;
  usuario.password = password || usuario.password;

  res.status(200).json({
    message: "Usuário atualizado com sucesso!",
    usuario,
  });
});

app.delete("/users/:id", (req, res) => {
  const { id } = req.params;

  const index = usuarios.findIndex((usuario) => usuario.id == id);

  if (index === -1) {
    return res.status(404).json({
      message: "Usuário não encontrado!",
    });
  }

  usuarios.splice(index, 1);

  res.status(200).json({
    message: "Usuário deletado com sucesso!",
  });
});
