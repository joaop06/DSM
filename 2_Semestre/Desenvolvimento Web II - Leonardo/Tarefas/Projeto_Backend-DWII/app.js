const express = require("express");
const app = express();

app.listen(8080, () => {
    console.log("Servidor local ativo! Porta: 8080")
})

app.use(express.json());


const indexRouter = require('./src/routes/index');
app.use('/', indexRouter);
const taskRouter = require('./src/routes/taskRouter');
app.use('/', taskRouter);

module.exports = app;

