const express = require("express");
const app = express();
app.use(express.json());

app.listen(1010, () => {
    console.log("Servidor local ativo! Porta: 1010")
})

let tarefas = [];

app.get('/tarefas', (req, res) => {
  res.json(tarefas);
  console.log("Mostrando todas as tarefas.")
})

app.post('/tarefas', (req, res) => {
  res.send(`<input type="text" id="nova_tarefa" name="nova_tarefa">`)
  const form = document.querySelector('form');
  form.adicionar_nova_tarefa('submit', (event) => {
    const input_nova_tarefa = document.querySelector('#nova_tarefa');
    nova_tarefa = input_nova_tarefa.value;
    nova_tarefa.id = tarefas.length + 1;
    tarefas.push(nova_tarefa);
    res.json(nova_tarefa);
  });
})



/*
const express = require('express');
const app = express();
app.use(express.json());

let tasks = [];

// Retorna todas as tarefas na lista
app.get('/tasks', (req, res) => {
  res.json(tasks);
});

// Retorna a tarefa com o ID correspondente
app.get('/tasks/:id', (req, res) => {
  const task = tasks.find(task => task.id === parseInt(req.params.id));
  if (!task) {
    res.status(404).send('Tarefa não encontrada.');
  } else {
    res.json(task);
  }
});

// Cria uma nova tarefa na lista
app.post('/tasks', (req, res) => {
  const task = req.body;
  task.id = tasks.length + 1;
  tasks.push(task);
  res.json(task);
});

// Atualiza a tarefa com o ID correspondente
app.put('/tasks/:id', (req, res) => {
  const task = tasks.find(task => task.id === parseInt(req.params.id));
  if (!task) {
    res.status(404).send('Tarefa não encontrada.');
  } else {
    Object.assign(task, req.body);
    res.json(task);
  }
});

// Remove a tarefa com o ID correspondente
app.delete('/tasks/:id', (req, res) => {
  const taskIndex = tasks.findIndex(task => task.id === parseInt(req.params.id));
  if (taskIndex === -1) {
    res.status(404).send('Tarefa não encontrada.');
  } else {
    tasks.splice(taskIndex, 1);
    res.sendStatus(204);
  }
});

app.listen(3000, () => {
  console.log('API de tarefas iniciada na porta 3000.');
});
*/